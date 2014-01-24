" Vim syntax file
" © Hugues HIEGEL 2013 (hugues@hiegel.fr)
" Licensed under CC BY/NC/SA
"
" Version 0

if exists("b:current_syntax")
	finish
endif

setlocal iskeyword+=-
syntax case ignore

syn match  Todo      /→ .*/                   containedin=ALLBUT,todoDone,todoTaskDone
"syn match  String    /{[^}]*}/                 containedin=ALL
syn match  String    /'[^']*'\|"[^"]*"/        containedin=ALL

syn match todoKeyWord  /^\s*\([A-Z _-]*\w\+\):/

syn region todoTask3     start=/^\(\s*\)\W/  end=/$/       contains=todoKeyWord
syn region todoTask2     start=/^\(\s*\)-/  end=/$/       contains=todoKeyWord
syn region todoTask1     start=/^\(\s*\)+/  end=/$/      contains=todoKeyWord
syn region todoTitle     start=/^\(\s*\)\*/ end=/$/       contains=todoKeyWord

syn region todoDone      start=/^x/  end=/^\(\S\|$\)/me=s-1 contains=todoTaskDone
syn region todoTaskDone  start=/^\z\(\s\+\)x/ skip=/^\z1\s\+/ end=/^/me=s-1

syn match  rtTicket /\(RTC *\)\?\#\d\+/                     containedin=ALLBUT,todoDone,todoTaskDone

"syn region Comment start=/^\%^/ end=/=$/
syn region Comment start=/^ *==/ end=/$/

let b:current_syntax="todo"
