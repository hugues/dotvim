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

hi TabLine				term=reverse,none	cterm=none ctermbg=black ctermfg=white
hi TabLineSel			term=bold			cterm=bold ctermbg=none  ctermfg=yellow
hi TabLineFill			term=reverse,none	cterm=none ctermbg=black ctermfg=white
