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

"syn match  Todo      /\<\u\+\>/                   containedin=ALLBUT,todoDone,todoTaskDone
"syn match  String    /{[^}]*}/                 containedin=ALL
syn match  String    /'[^']*'\|"[^"]*"/        containedin=ALL

syn match todoKeyWord  /\(\[[ .oOX]\]\)/

syn region todoTitle1     start=/^\s*=/ end=/=$/
syn region todoTitle2     start=/^\s*==/ end=/==$/
syn region todoTitle3     start=/^\s*===/ end=/===$/
syn region todoTitle4     start=/^\s*====/ end=/====$/

syn region todoTask1     start=/^\s*[-*#] \[ \]/  end=/$/me=s-1  contains=todoKeyWord,todoTask2,todoTask3,todoTask4
syn region todoTask2     start=/^\s*[-*#] \[\.\]/  end=/$/me=s-1 contains=todoKeyWord,todoTask3,todoTask4
syn region todoTask3     start=/^\s*[-*#] \[o\]/  end=/$/me=s-1  contains=todoKeyWord,todoTask4
syn region todoTask4     start=/^\s*[-*#] \[O\]/  end=/$/me=s-1  contains=todoKeyWord
"syn region todoTask3     start=/^\(\s*\)\W/  end=/$/       contains=todoKeyWord
"syn region todoTask2     start=/^\(\s*\)+/  end=/$/       contains=todoKeyWord
"syn region todoTask1     start=/^\(\s*\)-/  end=/$/      contains=todoKeyWord

syn region todoDone      start=/^[-*#] \[X\]/  end=/^\(\S\|$\)/me=s-1 contains=todoTaskDone
syn region todoTaskDone  start=/^\z\(\s\+\)[-*#] \[X\]/ skip=/^\z1\s\+/ end=/^/me=s-1

syn region todoLink      start=/\[\[/  end=/\]\]/ containedin=ALL

syn match  rtTicket /\(SF *\|\(RTC *\)\?\#\)\d\+/                     containedin=ALLBUT,todoDone,todoTaskDone

"syn region Comment start=/^\%^/ end=/=$/
"syn region Comment start=/^ *==/ end=/$/

let b:current_syntax="todo"
