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

highlight Comment		ctermfg=white				cterm=bold
highlight Constant		ctermfg=blue				cterm=none
highlight Number		ctermfg=blue				cterm=none
highlight String		ctermfg=red ctermbg=0     cterm=none
highlight Identifier   ctermfg=red				cterm=none
highlight Function		ctermfg=red				cterm=bold
highlight Statement    ctermfg=red				cterm=none
highlight cConditional ctermfg=red		cterm=bold
highlight clear cStatement
highlight link cStatement Statement
highlight Label        ctermfg=red               cterm=bold,underline
highlight clear cLabel
highlight link cLabel Label
highlight PreProc		ctermfg=red				cterm=bold,underline
highlight Type			ctermfg=blue               cterm=none
highlight Special		ctermfg=red				cterm=bold
highlight cFormat      ctermfg=red				cterm=bold
highlight Error			cterm=bold
highlight Todo         ctermfg=black  ctermbg=yellow		cterm=bold
highlight Directory    ctermfg=green
"highlight Normal
highlight Search       ctermfg=yellow  ctermbg=none cterm=bold
highlight IncSearch    ctermfg=yellow  ctermbg=none cterm=bold,underline
highlight Title        ctermfg=yellow               cterm=bold

highlight Visual		ctermfg=none ctermbg=black cterm=none

highlight MatchParen   ctermfg=yellow  ctermbg=none cterm=bold

highlight DiffAdd		term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffChange	term=bold		cterm=none	ctermfg=none	ctermbg=black
highlight DiffDelete	term=reverse	cterm=none	ctermfg=black	ctermbg=none
highlight DiffText		term=underline	cterm=bold	ctermfg=green	ctermbg=none

hi StatusLine			term=reverse,bold	cterm=bold ctermbg=black ctermfg=yellow  guifg=#ffff00 guibg=#0000ff gui=none
hi StatusLineNC			term=reverse		cterm=none ctermbg=black ctermfg=none
hi VertSplit			term=reverse		cterm=none ctermbg=black ctermfg=black
hi FoldColumn			term=reverse		cterm=bold ctermbg=none  ctermfg=red
hi clear Folded
hi link Folded FoldColumn
hi LineNR				term=reverse,bold	ctermbg=none ctermfg=yellow cterm=bold

hi TabLine				term=none,underline	cterm=none,underline ctermbg=none ctermfg=white
hi clear TabLineFill
hi link TabLineFill TabLine
hi TabLineSel			term=bold			ctermbg=red  ctermfg=black cterm=bold

hi CursorLine			ctermbg=black cterm=none

hi SpellBad        term=reverse cterm=bold ctermbg=red ctermfg=red gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=none cterm=none ctermfg=red gui=undercurl guisp=Blue
hi SpellRare       term=reverse cterm=bold ctermfg=magenta gui=undercurl guisp=Magenta
hi SpellLocal      term=underline cterm=bold ctermfg=green gui=undercurl guisp=Cyan

hi WildMenu        term=reverse cterm=bold ctermbg=black ctermfg=yellow

highlight NonText      ctermfg=black cterm=bold
highlight SpecialKey   ctermfg=black cterm=none

