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

syn match  Todo      /([^)]*)/                    containedin=ALLBUT,todoDone,todoTaskDone
syn match  String    /\[[^\]]*\]/                 containedin=ALL

syn region todoTitle     start=/^\z\(\s*\)\*/ end=/$/
syn region todoTask1     start=/^\z\(\s*\)+/  end=/$/
syn region todoTask2     start=/^\z\(\s*\)→/  end=/$/
syn region todoTask3     start=/^\z\(\s*\):/  end=/$/
syn region todoDone      start=/^-/  end=/^\(\S\|$\)/me=s-1 contains=todoTaskDone
syn region todoTaskDone  start=/^\z\(\s\+\)-/ skip=/^\z1\s\+/ end=/^/me=s-1

syn match  rtTicket /\#\d\+/                     containedin=ALLBUT,todoDone,todoTaskDone

syn region Comment start=/^\%^\|=/ end=/=$/

hi link todoTitle Title
hi link todoTask1 DiffText
hi link todoTask2 Number
hi link todoTask3 Statement

hi link rtTicket SpellRare

hi link todoDone     NonText
hi link todoTaskDone NonText

let b:current_syntax="todo"
