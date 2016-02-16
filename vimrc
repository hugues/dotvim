
color default

"syntax clear
syntax on
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

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'
    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'
  " right-align the label to close the current tab page
  "if tabpagenr('$') > 1
  "  let s .= '%=%#TabLine#%999Xclose'
  "endif
  return s
endfunction

function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return bufname(buflist[winnr - 1])
endfunction

"set statusline=%y─┤\ %*%1*%<%f%*\ %2*%M%3*%r%*├%=┤%4*%c%V%*├─┤%4*%l/%L%*├──┤%4*%P%*├─
set statusline=┤%y\ %*%1*%<%f%*\ %2*%M%3*%r%*├%=┤%4*%P%*├

set tabline=%!MyTabLine()

set wildmode=longest,list,full

" Set Auto-indentation
"set autoindent
"set cindent

" Make command line X lines high
set cmdheight=1

" Highlight search strings
set hlsearch
" Incremental search
set incsearch
" No wrap search
set nowrapscan

" Hide mouse when typing
set mousehide

" highlighting strings inside C comments
let c_comment_strings=1

" Backup dir
set autowrite

set splitright
set splitbelow

" default error format
"set efm=\"%f\"\\,\ line\ %l:\ error\ %m,\"%f\"\\,\ line\ %l:\ warning\ %m

" Dim inactive windows using 'colorcolumn' setting
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
"if v:version > 703
"function! s:DimInactiveWindows()
"  for i in range(1, tabpagewinnr(tabpagenr(), '$'))
"    let l:range = ""
"    if i != winnr()
"      if &wrap
"        " HACK: when wrapping lines is enabled, we use the maximum number
"        " of columns getting highlighted. This might get calculated by
"        " looking for the longest visible line and using a multiple of
"        " winwidth().
"        let l:width=256 " max
"      else
"        let l:width=winwidth(i)
"      endif
"      let l:range = join(range(1, l:width), ',')
"    endif
"    call setwinvar(i, '&colorcolumn', l:range)
"  endfor
"endfunction
"augroup DimInactiveWindows
"  au!
"  au WinEnter * call s:DimInactiveWindows()
"augroup END
"endif
"
" remaps C-j & C-k to C-y and C-e (buffer up/down line-by-line)
noremap <C-k> <C-y>
noremap <C-j> <C-e>

set nowrap
noremap <C-l> z2l
noremap <C-h> z2h
noremap j gj
noremap k gk
noremap gj j
noremap gk k

"Macros
nmap <F2>	:set invet<CR>
" folding
set foldmethod=indent
set foldignore=
augroup Folding
	au!
	autocmd FileType c\|cpp		setlocal foldmethod=syntax
	autocmd FileType mail		setlocal foldmethod=expr
	autocmd FileType mail		setlocal foldexpr=(strlen(substitute(matchstr(getline(v:lnum),\"^\ *[>\ ]*\"),\"\ *\",\"\",\"g\")))
augroup END

set foldminlines=0
set foldcolumn=0
set foldlevel=999

" Quick search for merges
nmap <F1>   /^\(<\{7\}\\|>\{7\}\\|=\{7\}\)<CR>

nmap <F4>   :windo set invnumber<CR>

"nmap <F6>	:setlocal foldcolumn-=1<CR>:execute 'setlocal foldlevel='.(&foldcolumn - 2)<CR>
"nmap <F7>	:setlocal foldcolumn+=1<CR>:execute 'setlocal foldlevel='.(&foldcolumn - 2)<CR>
nmap <F6>	:windo set foldcolumn-=1<CR>
nmap <F7>	:windo set foldcolumn+=1<CR>
" open all
"nmap <F6>	zR
" close all
"nmap <F7>	zM
" open/close under cursor
nmap ;		za
" open/close recursive under cursor
"nmap <F7>	zA
nmap <F5>	:windo set invfoldenable<CR>

"buffer moving
nmap <ESC>h	:tabN<CR>
nmap <ESC>j	:bn<CR>
nmap <ESC>k	:bN<CR>
nmap <ESC>l	:tabn<CR>

augroup Skeleton
  au!
  " read in skeleton files
  autocmd BufNewFile *.* silent! 0r ~/.vim/skel/%:e
  autocmd BufNewFile *   silent! %substitute#<+\(.\{-\}\)+>#\=eval(submatch(1))#ge
  " get to cursor position
  autocmd BufNewFile *   silent! %substitute#<=CURSOR=>##g
augroup END

augroup Load
	au!
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\   exe "normal zz" |
		\ endif
augroup END

function! CscopeSearch(csearch)

	let @/=a:csearch
	set hls

	let l:prompt =  "Rechercher '".a:csearch."' avec cscope [cdefgist] : "

	echo l:prompt
	let l:ctype=nr2char(getchar())
	redraw
	echo l:prompt.l:ctype." "

	return 'set hls | cscope find '.l:ctype.' '.a:csearch
endfunction

function! LoadTags()
	" Load local cscope db if exists
	if filereadable( expand("$PWD/tags") )
		set tags=tags
	elseif filereadable( expand("$PWD/ctags.out") )
		set tags=$pwd/ctags.out
	elseif has("cscope")
		if filereadable( expand("$PWD/cscope.out") )
			set cst
		endif

		" Automagically done...
		"cscope add $PWD/cscope.out

		" cscope macros
		nmap <ESC>c :execute CscopeSearch(expand("<cword>"))<CR>

		" search definitions of word under cursor
		nmap <ESC>g :cs find g <cword><CR>
		nmap <ESC>S :cs find s <cword><CR>

		" search file under cursor
		"nmap <ESC>f :execute CscopeSearch(expand("<cfile>"))<CR>
		nmap <ESC>F :execute CscopeSearch(expand("<cfile>"))<CR>
		nmap <ESC>f :cs find f <cfile><CR>

		" search current file
		nmap <ESC>% :execute CscopeSearch(expand("%:t"))<CR>
		"nmap <ESC>% :cs find i %:t<CR>

		nmap <ESC>r :execute CscopeSearch(input("Rechercher : "))<CR>
	endif
endfunction
call LoadTags()

augroup WhiteSpaces
	" F*cking whitespaces
	autocmd BufRead * highlight ExtraWhitespace ctermbg=red ctermfg=black guibg=red
	autocmd BufRead * match     ExtraWhitespace /\s\+$\| \+\ze\t\| \+/
augroup END

set list listchars=tab:│ ,precedes:‥,extends:‥,nbsp:␣
set fillchars=vert:│,stl:─,stlnc:─,fold:-,diff:x
nmap <F3>	:set invlist<CR>

set title
set autoindent
set diffopt=iwhite,filler,vertical
set guifont="Liberation Mono 10"

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

"noremap U		yyp:s/[^	]/-/g<CR>:noh<CR>
"noremap Y		yyp:s/[^	]/=/g<CR>:noh<CR>

set ttimeoutlen=0
set timeoutlen=250

" Code comment/uncomment
 noremap <silent> //    m"I// <ESC>g`"3l
 noremap <silent> /*    m"I/* <ESC>A */<ESC>jg`"3l
    xmap <silent> //    /*
xnoremap <silent> /*    <ESC>`>a */<ESC>`<i/* <ESC>
 noremap <silent> \*    m"e?/\* *<CR>:s:/\* *::<CR>/ *\*\/<CR>:s: *\*/::\|:nohl<CR>jg`"3h
 noremap <silent> \\    m"0:s:// *::\|:nohl<CR>g`"3h

" Reformatting is done using 'gq<motion>'
noremap <ESC>Q	:s/^/> /<CR>
noremap <ESC>q	:s/^[ ]*>[ ]*//<CR>

noremap <silent> <ESC>u	:noh<CR>

runtime! ftplugin/man.vim
noremap K		:Man <C-R>=expand("<cword>")<CR><CR>


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
noremap <ESC>b :GitBlameCurrentLine<CR>

augroup MailEditor
	au!

	" Highlights columns 77-80 and 81+
	autocmd BufRead /tmp/mutt-*[0-9]	let w:m1=matchadd('Search', '\%>77v,\+', -1)
	autocmd BufRead /tmp/mutt-*[0-9]	let w:m2=matchadd('ErrorMsg', '\%>81v,\+', -1)

	" <ESC>n	goto next empty reply-to paragraph
	" <ESC>m	opens an empty reply-paragraph at this line
	" <ESC>d	deletes everything until but the signature
	" <ESC>w	reformats entire mail but the signature
	" <ESC>D	deletes everything until but the previous reply-to §
	autocmd FileType mail noremap <ESC>n /^> $<CR>
	autocmd FileType mail noremap <ESC>D ^d?^\([^>]\\|$\)?+<CR>O<ESC>
	autocmd FileType mail noremap <ESC>d ^d/^-- $<CR>O<ESC>
	autocmd FileType mail noremap <ESC>w ggv/^-- $<CR><UP>:!par rTbgqRe 'B=.,?_A_a' 'Q=_s>\|'<CR>

	set spelllang=fr,en,de
	autocmd FileType mail setlocal spell
	autocmd FileType mail setlocal textwidth=74
	autocmd FileType mail execute Erase_Sig_but_Your()

	autocmd FileType mail :normal ,n
augroup END

noremap zc	z=1<CR><CR>

function! SetLocalTabs(tabsize)
	execute 'setlocal tabstop=' . a:tabsize
	execute 'setlocal softtabstop=' . a:tabsize
	execute 'setlocal shiftwidth=' . a:tabsize
	setlocal smarttab
	setlocal expandtab
endfunction

""
"" DafUq ?
""--------
"augroup Tabs
"	au!
"	autocmd FileType python execute SetLocalTabs(4)
"augroup END
"

augroup CursorLine
	au!

	" when switching between buffers
	autocmd BufEnter * set cursorline
	autocmd BufLeave * set nocursorline

	" when switching between windows
	autocmd WinEnter * set cursorline
	autocmd WinLeave * set nocursorline

	" doesn’t seem to work on urxvt :(
	autocmd FocusLost * set nocursorline
	autocmd FocusGained * set cursorline
augroup END

" footnotes
inoremap ,, <Esc>:call VimFootnotes()<CR>
inoremap ,. <Esc>:exe b:pos<CR>

function! VimFootnotes()
  if exists("b:vimfootnotenumber")
    let b:vimfootnotenumber = b:vimfootnotenumber + 1
    let cr = ""
  else
    let b:vimfootnotenumber = 0
    let cr = "\<CR>"
  endif
  let b:pos = line('.').' | normal! '.virtcol('.').'|'.'4l'
  exe "normal a[".b:vimfootnotenumber."]\<Esc>G"
  if search("-- $", "b")
    exe "normal O".cr."[".b:vimfootnotenumber."] "
  else
    exe "normal o".cr."[".b:vimfootnotenumber."] "
  endif
  startinsert!
endfunction

augroup Todo
	au!
	autocmd FileType vimwiki set syn=todo
augroup END
