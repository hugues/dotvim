
color red

"syntax clear
syntax on
"Allow special Vim improvements like multiple-undo
set nocompatible
"Seems to fuck up symlinks when set to no... [Debian bug #158657]
set backupcopy=yes

"Set improve Backspace
set backspace=2
"Show the current edition mode on last line, number of column and line
set showmode
set ruler
"Show line numbers
set number
set laststatus=2

" Set Auto-indentation
"set autoindent
"set cindent

" Make command line X lines high
set cmdheight=1

" Highlight search strings
set hlsearch
" Incremental search
set incsearch

" Hide mouse when typing
set mousehide

" highlighting strings inside C comments
let c_comment_strings=1

" Backup dir
set autowrite

" default error format
"set efm=\"%f\"\\,\ line\ %l:\ error\ %m,\"%f\"\\,\ line\ %l:\ warning\ %m

" remaps C-j & C-k to C-y and C-e (buffer up/down line-by-line)
noremap <C-k> <C-y>
noremap <C-j> <C-e>

"Macros
map <F2>	:source ~/.vim/bépo

" folding
set foldmethod=indent
set foldignore=
autocmd BufRead *.[ch] setlocal foldmethod=syntax
autocmd BufRead /tmp/mutt-*[0-9] setlocal foldmethod=expr
autocmd BufRead /tmp/mutt-*[0-9] setlocal foldexpr=(strlen(substitute(matchstr(getline(v:lnum),\"^\ *[>\ ]*\"),\"\ *\",\"\",\"g\")))
set foldminlines=0
set foldcolumn=5
set foldlevel=999
map <F7>	:setlocal foldcolumn-=1<CR>:execute 'setlocal foldlevel='.(&foldcolumn - 2)<CR>
map <F8>	:setlocal foldcolumn+=1<CR>:execute 'setlocal foldlevel='.(&foldcolumn - 2)<CR>
map <F9>	za
map <F10>	:setlocal invfoldenable<CR>

"buffer moving
map <C-B>	:bN<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\   exe "normal zz" |
	\ endif

" Load local cscope db if exists
if filereadable( expand("$PWD/tags") )
	set tags=tags
elseif filereadable( expand("$PWD/ctags.out") )
	set tags=$pwd/ctags.out
elseif has("cscope")
	if filereadable( expand("$PWD/cscope.out") )
		set cst
		" cscope macros
		map <C-]> :cs find g <C-R>=expand("<cword>")<CR><CR> " find global definition
		map <C-[> :cs find c <C-R>=expand("<cword>")<CR><CR> " find callers of function under cursor
		map <C-\> :cs find t <C-R>=expand("<cword>")<CR><CR> " find assignments to variable under cursor
		map <C-s> :cs find s <C-R>=expand("<cword>")<CR><CR> " find string under cursor
		map <C-f> :cs find f <C-R>=expand("<cword>")<CR><CR> " find file under cursor
		map <C-i> :cs find i <C-R>=expand("<cword>")<CR><CR> " find files including file under cursor
		map <C-i> :cs find I %<CR>							 " find files including current file
		cs add $PWD/cscope.out
	endif
endif

" F*cking trailing whitespaces
autocmd BufRead * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufRead * match ExtraWhitespace /\s\+$\| \+\ze\t\| /

set title
set autoindent
set diffopt=iwhite,filler
set guifont=LucidaTypewriter\ 8

" mouse
"	v -> enabled in visual mode
"	i -> enabled in insert mode
"	c -> enabled in command mode
"	a -> enabled in all modes

set mouse=a
set mousem=extend

set tabstop=4
set shiftwidth=4
set noexpandtab

map U		yyp:s/[^	]/-/g<CR>:noh<CR>
map Y		yyp:s/[^	]/=/g<CR>:noh<CR>

" Reformatting is done using 'gq<motion>'
map <ESC>Q	:s/^/> /<CR>
map <ESC>q	:s/^[ ]*>[ ]*//<CR>

map <ESC>u	:noh<CR>

runtime! ftplugin/man.vim
map K		:Man <C-R>=expand("<cword>")<CR><CR>


" Function
"	Erase_Sig_but_Your()
"
" Author
"	Yann Kerhervé <yk@cyberion.net>
"	Based on Luc Hermitte <hermitte@free.fr> work
"
" Purpose
"	Deletes signatures at the end of e-mail replies. But keep
"	your sig intact (mutt-added).
"	Also deletes the empty lines (even those beginning by '>')
"	preceding the signature.
"
function! Erase_Sig_but_Your()
	" Search for the signature pattern : "^> -- $"
	let lastline = line ('$')
	let i = lastline
	" (1)
	while i >= 1
		if getline(i) =~ '^> *-- $'
			break
		endif
		let i = i - 1
	endwhile
	" let find the beginning of our sig
	let j = i
	while j < lastline
		let j = j + 1
		if getline(j) =~ '^-- $'
			let j = j - 1
			break
		endif
	endwhile
	" If (1) found, then
	if i != 0
		" First, search for the last non empty (non sig) line
		while i >= 1
			let i = i - 1
			" rem : i can't value 1
			if getline(i) !~ '^(>s*)*$'
				break
			endif
		endwhile
		" Second, delete these lines plus the signature
		let i = i + 1
		exe 'normal '.i.'Gd'.j.'G'
	endif
endfunction

function! GitBlameCurrentLine()
	let l:line  = line('.')
	let l:file  = expand("%:t")
	let l:wd	= expand("%:p:h")
	let content = system("cd " . l:wd . ";git blame -L ". l:line . "," . l:line . " " . l:file . " | sed 's/).*/)/'")
	let line = split(content, '\n')[0]
	echohl WarningMsg | echo line | echohl None
endfunction
command! GitBlameCurrentLine :call GitBlameCurrentLine()
map <ESC>b :GitBlameCurrentLine<CR>

" <ESC>n 	goto next empty reply-to paragraph
" <ESC>m	opens an empty reply-paragraph at this line
" <ESC>d	deletes everything from there onto the signature
" <ESC>w	reformats entire mail but the signature
" <ESC>D	deletes all the quote above
autocmd BufRead /tmp/mutt-*[0-9a-f] map <ESC>n /^> $<CR>
autocmd BufRead /tmp/mutt-*[0-9a-f] map <ESC>D ^d?^\([^>]\\|$\)?+<CR>O<ESC>
autocmd BufRead /tmp/mutt-*[0-9a-f] map <ESC>d ^d/^-- $<CR>O<ESC>
autocmd BufRead /tmp/mutt-*[0-9a-f] map <ESC>w ggv/^-- $<CR><UP>:!par rTbgqRe 'B=.,?_A_a' 'Q=_s>\|'<CR>

autocmd BufRead /tmp/mutt-*[0-9a-f] setlocal spell spelllang=fr,en,de
autocmd BufRead /tmp/mutt-*[0-9a-f] setlocal textwidth=74
autocmd BufRead /tmp/mutt-*[0-9a-f] execute Erase_Sig_but_Your()
autocmd BufRead /tmp/mutt-*[0-9a-f] :normal ,n

map zc	z=1<CR><CR>

function! SetLocalTabs(tabsize)
	execute 'setlocal tabstop=' . a:tabsize
	execute 'setlocal softtabstop=' . a:tabsize
	execute 'setlocal shiftwidth=' . a:tabsize
	setlocal smarttab
	setlocal expandtab
endfunction
autocmd BufAdd *.py execute SetLocalTabs(4)

autocmd BufEnter * set cursorline
autocmd WinEnter * set cursorline
autocmd BufLeave * set nocursorline
autocmd WinLeave * set nocursorline
