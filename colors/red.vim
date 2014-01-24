" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file inspi01 from pablo
" Maintainer:	Hugues Hiegel <hugues@hiegel.fr>
" Last Change:	2008 July 04

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "red"

highlight Comment		ctermfg=81					cterm=bold
highlight Constant		ctermfg=04					cterm=none
highlight Number		ctermfg=04					cterm=bold
highlight String		ctermfg=32		ctermbg=00	cterm=none
highlight Identifier	ctermfg=01						cterm=bold
highlight Function		ctermfg=01						cterm=bold
highlight Statement		ctermfg=07					cterm=none
highlight cConditional	ctermfg=01						cterm=bold
highlight clear cStatement
highlight link cStatement Statement
highlight Label			ctermfg=01						cterm=bold
highlight clear cLabel
highlight link cLabel Label
highlight PreProc		ctermfg=01					cterm=bold
highlight Type			ctermfg=04					cterm=none
highlight Special		ctermfg=04					cterm=none
highlight cFormat		ctermfg=01						cterm=bold
highlight Error											cterm=bold
highlight Todo			ctermfg=20		ctermbg=24	cterm=bold
highlight Directory		ctermfg=02
"highlight Normal
highlight Search		ctermfg=03	ctermbg=none	cterm=bold
highlight IncSearch		ctermfg=03	ctermbg=20		cterm=bold
highlight Title			ctermfg=03					cterm=bold

highlight Visual		ctermfg=none	ctermbg=00	cterm=none

highlight MatchParen	ctermfg=03	ctermbg=none	cterm=bold

highlight DiffAdd		term=bold			ctermfg=none	cterm=none	ctermbg=00
highlight DiffChange	term=bold			ctermfg=none	cterm=none	ctermbg=00
highlight DiffDelete	term=reverse		ctermfg=00	cterm=none	ctermbg=none
highlight DiffText		term=none		ctermfg=02	cterm=none	ctermbg=none

hi StatusLine			term=reverse,bold	ctermfg=03	ctermbg=00	cterm=bold	guifg=#ffff00 guibg=#0000ff gui=none
hi StatusLineNC			term=reverse		ctermfg=none	ctermbg=00	cterm=none
hi VertSplit			term=reverse		ctermfg=00	ctermbg=00	cterm=none
hi FoldColumn			term=reverse		ctermfg=01		ctermbg=none	cterm=bold
hi clear Folded
hi link Folded FoldColumn
hi LineNR				term=reverse,bold	ctermbg=none ctermfg=03 cterm=bold

hi clear TabLine
hi TabLine				term=underline cterm=none,underline  ctermbg=none ctermfg=00
hi clear TabLineFill
hi link TabLineFill TabLine
hi clear TabLineSel
hi TabLineSel			term=bold			ctermbg=00  ctermfg=03 cterm=bold

hi CursorLine			ctermbg=08 cterm=none

hi SpellBad        term=reverse cterm=bold ctermbg=01 ctermfg=01 gui=undercurl guisp=Red
hi SpellCap        term=reverse cterm=none ctermbg=none ctermfg=01 gui=undercurl guisp=Blue
hi SpellRare       term=reverse cterm=bold ctermbg=64 ctermfg=68 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline cterm=bold ctermfg=02 gui=undercurl guisp=Cyan

hi WildMenu        term=reverse cterm=bold ctermbg=00 ctermfg=03

highlight NonText      ctermfg=00 cterm=bold
highlight SpecialKey   ctermfg=00 cterm=none


" TODO
hi todoTitle ctermfg=11 cterm=bold
hi todoTask1 ctermfg=36 cterm=bold
hi todoTask2 ctermfg=24
hi todoTask3 ctermfg=77

hi rtTicket ctermfg=22 ctermbg=18 cterm=bold

hi link todoDone     DiffDelete
hi link todoTaskDone DiffDelete

hi todoKeyWord  ctermfg=64 ctermbg=32 cterm=bold

