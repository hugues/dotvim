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

highlight Comment	   ctermfg=white			   cterm=bold
highlight Constant	   ctermfg=blue			   cterm=none
highlight Number	   ctermfg=blue			   cterm=none
highlight String	   ctermfg=yellow ctermbg=0     cterm=none
highlight Identifier   ctermfg=green			   cterm=none
highlight Function	   ctermfg=yellow			   cterm=bold
highlight Statement    ctermfg=green			   cterm=bold
highlight cConditional ctermfg=yellow	           cterm=bold
highlight clear cStatement
highlight link cStatement Statement
highlight Label        ctermfg=yellow               cterm=bold,underline
highlight clear cLabel
highlight link cLabel Label
highlight PreProc	   ctermfg=yellow			   cterm=bold,underline
highlight Type		   ctermfg=cyan               cterm=none
highlight Special	   ctermfg=yellow			   cterm=bold
highlight cFormat      ctermfg=yellow			   cterm=bold
highlight Error		                           cterm=bold
highlight Todo         ctermfg=black  ctermbg=yellow	   cterm=bold
highlight Directory    ctermfg=green
"highlight Normal
highlight Search       ctermfg=blue  ctermbg=none cterm=bold
highlight IncSearch    ctermfg=blue  ctermbg=none cterm=bold,underline
highlight Title        ctermfg=yellow               cterm=bold

highlight Visual	   ctermfg=none ctermbg=black cterm=none

highlight MatchParen   ctermfg=yellow  ctermbg=none cterm=bold

highlight DiffAdd		term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffChange	term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffDelete	term=reverse	cterm=none	ctermfg=black	ctermbg=none
highlight DiffText		term=underline	cterm=bold	ctermfg=red	ctermbg=none

highlight StatusLine ctermfg=yellow  ctermbg=0  cterm=none guifg=#ffff00 guibg=#0000ff gui=none
hi StatusLine			term=reverse,bold	cterm=bold ctermbg=black ctermfg=yellow
hi StatusLineNC			term=reverse		cterm=none ctermbg=black ctermfg=none
hi VertSplit			term=reverse		cterm=none ctermbg=black ctermfg=black
hi FoldColumn			term=reverse		cterm=bold ctermbg=none  ctermfg=red
hi clear Folded
hi link Folded FoldColumn

hi TabLine				term=none,underline	cterm=none,underline ctermbg=none ctermfg=white
hi clear TabLineFill
hi link TabLineFill TabLine
hi TabLineSel			term=bold			ctermbg=yellow  ctermfg=black cterm=bold

hi CursorLine			ctermbg=black cterm=none

hi SpellBad        term=reverse cterm=bold ctermbg=yellow ctermfg=red gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=none cterm=none ctermfg=red gui=undercurl guisp=Blue
hi SpellRare       term=reverse cterm=bold ctermfg=magenta gui=undercurl guisp=Magenta
hi SpellLocal      term=underline cterm=bold ctermfg=cyan gui=undercurl guisp=Cyan
