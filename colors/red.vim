" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file inspired from pablo
" Maintainer:	Hugues Hiegel <hugues@hiegel.fr>
" Last Change:	2008 July 04

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "red"

highlight Comment	   ctermfg=7			   cterm=bold
highlight Constant	   ctermfg=4			   cterm=none
highlight Number	   ctermfg=4			   cterm=none
highlight String	   ctermfg=1 ctermbg=0     cterm=none
highlight Identifier   ctermfg=1			   cterm=none
highlight Function	   ctermfg=1			   cterm=bold
highlight Statement    ctermfg=1			   cterm=none
highlight cConditional ctermfg=1	           cterm=bold
highlight clear cStatement
highlight link cStatement Statement
highlight Label        ctermfg=1               cterm=bold,underline
highlight clear cLabel
highlight link cLabel Label
highlight PreProc	   ctermfg=1			   cterm=bold,underline
highlight Type		   ctermfg=4               cterm=none
highlight Special	   ctermfg=1			   cterm=bold
highlight cFormat      ctermfg=1			   cterm=bold
highlight Error		                           cterm=bold
highlight Todo         ctermfg=0  ctermbg=3	   cterm=bold
highlight Directory    ctermfg=2
"highlight Normal
highlight Search       ctermfg=3  ctermbg=none cterm=bold
highlight IncSearch    ctermfg=3  ctermbg=none cterm=bold,underline
highlight Title        ctermfg=3               cterm=bold

highlight Visual	   ctermfg=none ctermbg=black cterm=none

highlight MatchParen   ctermfg=3  ctermbg=none cterm=bold

highlight DiffAdd		term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffChange	term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffDelete	term=reverse	cterm=none	ctermfg=black	ctermbg=none
highlight DiffText		term=underline	cterm=none	ctermfg=none	ctermbg=32

highlight StatusLine ctermfg=3  ctermbg=0  cterm=none guifg=#ffff00 guibg=#0000ff gui=none
hi StatusLine			term=reverse,bold	cterm=bold ctermbg=black ctermfg=yellow
hi StatusLineNC			term=reverse		cterm=none ctermbg=black ctermfg=none
hi VertSplit			term=reverse		cterm=none ctermbg=black ctermfg=black
hi FoldColumn			term=reverse		cterm=bold ctermbg=none  ctermfg=red
hi clear Folded
hi link Folded FoldColumn

hi TabLine				term=none,underline	cterm=none,underline ctermbg=none ctermfg=white
hi clear TabLineFill
hi link TabLineFill TabLine
hi TabLineSel			term=bold			ctermbg=red  ctermfg=black cterm=bold

hi CursorLine			ctermbg=black cterm=none
