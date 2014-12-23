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

hi!			Comment			ctermfg=81					cterm=bold
hi!			Constant		ctermfg=65					cterm=none
hi!			Number			ctermfg=04					cterm=bold
hi!			String			ctermfg=32		ctermbg=00	cterm=none
hi!			Identifier		ctermfg=01					cterm=bold
hi!			Function		ctermfg=01					cterm=bold
hi!			Statement		ctermfg=64					cterm=bold
hi!	link	cStatement Statement
hi!			Conditional		ctermfg=64					cterm=none
hi!			cConditional	ctermfg=64					cterm=none
hi!			Label			ctermfg=01						cterm=bold
hi!	link	cLabel Label
hi!			PreProc			ctermfg=84		ctermbg=80		cterm=none
hi!	link	Macro PreProc
hi!			cDefine		ctermfg=85		ctermbg=none	cterm=none
hi!			Type			ctermfg=09					cterm=bold
hi!			cType		ctermfg=09					cterm=underline
hi!			Special		ctermfg=64		ctermbg=80	cterm=none
hi!			cFormat		ctermfg=01						cterm=bold
hi!			Error											cterm=bold
hi!			Todo			ctermfg=20		ctermbg=24	cterm=bold
hi!			Directory		ctermfg=02
"hi			Normal
hi!			Search		ctermfg=03	ctermbg=none	cterm=bold
hi!			IncSearch		ctermfg=03	ctermbg=20		cterm=bold
hi!			Title			ctermfg=03					cterm=bold

hi! Visual		ctermfg=none	ctermbg=00	cterm=none

hi! MatchParen	ctermfg=03	ctermbg=none	cterm=bold

hi! DiffAdd		term=bold			ctermfg=none	cterm=none	ctermbg=black
hi! DiffChange	term=bold			ctermfg=none	cterm=none	ctermbg=black
hi! DiffDelete	term=reverse		ctermfg=black	cterm=none	ctermbg=none
hi! DiffText	term=none			ctermfg=none	cterm=none	ctermbg=48

hi! StatusLineCMD		term=reverse,bold		ctermfg=64	ctermbg=none		cterm=bold
hi! StatusLineINS		term=reverse,bold		ctermfg=09	ctermbg=none		cterm=bold
hi! link StatusLine StatusLineCMD
au InsertLeave * hi! link StatusLine StatusLineCMD
au InsertEnter * hi! link StatusLine StatusLineINS
hi! User1			term=reverse,underline	ctermfg=01	ctermbg=none		cterm=bold
hi! User2			term=bold				ctermfg=03	ctermbg=none		cterm=bold
hi! User3			term=bold				ctermfg=80	ctermbg=00			cterm=bold
hi! User4			term=bold				ctermfg=32	ctermbg=none		cterm=none
hi! StatusLineNC	term=reverse			ctermfg=08	ctermbg=none		cterm=bold

hi! VertSplit			term=reverse			ctermfg=08	ctermbg=none	cterm=none
hi! FoldColumn			term=reverse			ctermfg=01	ctermbg=none	cterm=bold
hi! link Folded FoldColumn
hi! LineNR				term=reverse,bold	ctermbg=none ctermfg=80 cterm=bold

hi!       TabLine		term=underline cterm=none,underline	ctermbg=none ctermfg=00
hi! link  TabLineFill	TabLine
hi!       TabLineSel	term=bold							ctermbg=32  ctermfg=64 cterm=bold

hi! CursorLine		ctermbg=00 cterm=none
hi! CursorColumn	ctermbg=00 cterm=none

hi! SpellBad        term=reverse cterm=bold ctermbg=01 ctermfg=01 
hi! SpellCap        term=reverse cterm=none ctermbg=none ctermfg=01 
hi! SpellRare       term=reverse cterm=bold ctermbg=64 ctermfg=68
hi! SpellLocal      term=underline cterm=bold ctermfg=02

hi! WildMenu        term=reverse cterm=bold ctermbg=00 ctermfg=03

hi! NonText      ctermfg=00 cterm=bold
hi! SpecialKey   ctermfg=80 cterm=none

hi! makeCommands ctermfg=86 ctermbg=0

" TODO
hi! todoTitle1 ctermfg=03 cterm=bold
hi! todoTitle2 ctermfg=68 cterm=bold
hi! todoTitle3 ctermfg=36 cterm=bold
hi! todoTitle4 ctermfg=10 cterm=bold

hi! todoTask1 ctermfg=none
hi! todoTask2 ctermfg=86
hi! todoTask3 ctermfg=83
hi! todoTask4 ctermfg=81

hi! todoLink  ctermfg=64 ctermbg=32 cterm=underline

hi! rtTicket ctermfg=22 ctermbg=18 cterm=bold

hi! todoDone     ctermfg=16 cterm=bold
hi! todoTaskDone ctermfg=08 cterm=bold

hi! todoKeyWord  ctermfg=80 ctermbg=08 cterm=bold
