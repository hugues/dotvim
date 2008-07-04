"------------------------[ Magic Picard's vimrc ]--------------
"syntax clear
syntax on
"Allow special Vim improvements like multiple-undo
set nocompatible
set bkc=no

"Set improve Backspace
set bs=2

"Show the current edition mode on last line, number of column and line
set showmode
set ruler
set nu
set ls=2

" Set Auto-indentation
set ai
set cin

" Make command line X lines high
set ch=1

" Highlight search strings
set hlsearch

" Hide mouse when typing
set mousehide

" highlighting strings inside C comments
let c_comment_strings=1

" Backup dir
set aw

" compilation macros
map <C-K>  :Domake<CR>
map \      :cl<CR>
imap <F9>  <Esc>:cN<CR>i
imap <F10> <Esc>:cn<CR>i
" set default error format
"set efm=\"%f\"\\,\ line\ %l:\ error\ %m,\"%f\"\\,\ line\ %l:\ warning\ %m

"Macros
map <F2>   :Printcheader 
map <F3>   :Printfheader 
map <F4>   :Printhheader 
map <F5>   ^i/* <C-[>$a */<C-[>
map <F6>   ^3x$2h3x

" folding 
map <F8>   :SwitchFoldState<CR>
map <F9>   zA

"buffer moving
map <C-B>  :bN<CR>

" Load local cscope db if exists
if filereadable( expand("tags") )
   set tags=tags
elseif filereadable( expand("ctags.out") )
   set tags=ctags.out
elseif has("cscope")
    if filereadable( expand("cscope.out") )
      set cscopetag
      " cscope macros
	  map <C-]> :cs find g <C-R>=expand("<cword>")<CR><CR> " find global definition
      map <C-[> :cs find c <C-R>=expand("<cword>")<CR><CR> " find callers of function under cursor
      map <C-\> :cs find t <C-R>=expand("<cword>")<CR><CR> " find assignments to variable under cursor
	  map <C-s> :cs find s <C-R>=expand("<cword>")<CR><CR> " find string under cursor
	  map <C-f> :cs find f <C-R>=expand("<cword>")<CR><CR> " find file under cursor
	  map <C-i> :cs find i <C-R>=expand("<cword>")<CR><CR> " find files including file under cursor
	  map <C-i> :cs find I %<CR> 						   " find files including current file
      cs add cscope.out
    endif
endif

function! SourceCodeColors()
	" local syntax file - set colors on a per-machine basis:
	" vim: tw=0 ts=4 sw=4
	" Vim color file
	" Maintainer:	Ron Aaron <ron@ronware.org>
	" Last Change:	2003 May 02

	hi clear
	set background=dark
	if exists("syntax_on")
	  syntax reset
	endif
	let g:colors_name = "my_pablo"

	highlight Comment	   ctermfg=7			   cterm=bold
	highlight Constant	   ctermfg=4			   cterm=none
	highlight Number	   ctermfg=4			   cterm=none
	highlight String	                           cterm=bold
	highlight Identifier   ctermfg=3			   cterm=bold
	highlight Function	   ctermfg=4			   cterm=bold
	highlight Statement    ctermfg=3			   cterm=bold
	highlight cConditional ctermfg=3	           cterm=bold
	highlight cStatement   ctermfg=2               cterm=bold
	highlight cLabel       ctermfg=2               cterm=bold,underline
	highlight Label        ctermfg=3               cterm=bold,underline
	highlight PreProc	   ctermfg=6			   cterm=none
	highlight Type		   ctermfg=4               cterm=underline
	highlight Special	   ctermfg=4			   cterm=bold
	highlight cFormat      ctermfg=6			   cterm=bold
	highlight Error	  	                           cterm=bold
	highlight Todo         ctermfg=0  ctermbg=3	   cterm=bold
	highlight Directory    ctermfg=2						 
	"highlight Normal                                         
	highlight Search                  ctermbg=3             

	highlight DiffAdd		term=bold		cterm=none	ctermfg=none	ctermbg=black
	highlight DiffChange	term=bold		cterm=none	ctermfg=none	ctermbg=black
	highlight DiffDelete	term=reverse	cterm=none	ctermfg=black	ctermbg=none
	highlight DiffText		term=underline	cterm=none	ctermfg=none	ctermbg=red

	highlight StatusLine ctermfg=3  ctermbg=0  cterm=none guifg=#ffff00 guibg=#0000ff gui=none
	hi StatusLine			term=reverse,bold	cterm=bold ctermbg=black ctermfg=yellow
	hi StatusLineNC			term=reverse		cterm=none ctermbg=black ctermfg=none
	hi VertSplit			term=reverse		cterm=none ctermbg=black ctermfg=black
	hi Folded				term=reverse		cterm=bold ctermbg=none  ctermfg=green
	hi FoldColumn			term=reverse		cterm=bold ctermbg=none  ctermfg=green
endfunction

autocmd BufRead *					color zellner
"autocmd BufRead *.[ch]				execute SourceCodeColors()
autocmd BufRead *.php				color pablo
autocmd BufRead /tmp/mutt-*[0-9]	color elflord


set title
set autoindent
set diffopt=iwhite,filler
set guifont=LucidaTypewriter\ 8

set mouse=a
set mousem=extend

set tabstop=4
set shiftwidth=4
set noexpandtab

map U		yyp:s/[^	]/-/g<CR>:noh<CR>
map <ESC>Q	v/$\n\n<CR>J:.!fmt -tcw78<CR>:noh<CR>

" Function
"  Erase_Sig_but_Your()
"
" Author
"  Yann Kerhervé <yk@cyberion.net>
"  Based on Luc Hermitte <hermitte@free.fr> work
"
" Purpose
"  Deletes signatures at the end of e-mail replies. But keep
"  your sig intact (mutt-added).
"  Also deletes the empty lines (even those beginning by '>')
"  preceding the signature.
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

" <ESC>n 	goto next empty reply-to paragraph
" <ESC>m	opens an empty reply-paragraph at this line
" <ESC>d	deletes everything until but the signature
" <ESC>D	deletes everything until but the next reply-to §
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>n /^> $<CR>
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>m 'ddO<CR><CR><ESC>-I
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>D ^d?^\([^>]\\|$\)?+<CR>O<ESC>
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>d ^d/^-- $<CR>O<ESC>

autocmd BufRead /tmp/mutt-*[0-9] set textwidth=74
autocmd BufRead /tmp/mutt-*[0-9] execute Erase_Sig_but_Your()
autocmd BufRead /tmp/mutt-*[0-9] :normal ,n
