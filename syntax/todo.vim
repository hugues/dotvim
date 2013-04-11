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

syntax region todoTitle    start="^\(\w\|=\).*"  end="$"me=s-1
syntax region todoTask0    start="^\s*[\*]"  end="$"me=s-1 contains=todoInfo,todoTodo
syntax region todoTask1    start="^\s*[+]" end="$"me=s-1   contains=todoInfo,todoTodo
syntax region todoTask2    start="^\s*[→]" end="$"me=s-1   contains=todoInfo,todoTodo
syntax region todoTask3    start="^\s*[_]" end="$"me=s-1   contains=todoInfo,todoTodo
syntax region todoDone     start="^[-]" end="$"me=s-1      contains=todoInfo,todoTodo
syntax region todoTaskDone start="^\s\+[-]" end="$"me=s-1  contains=todoInfo,todoTodo
syntax region todoTodo     start="(" end=")"               contained
syntax region todoInfo     start="\[" end="\]"             contained

highlight      todoTitle    cterm=bold
highlight link todoTask0    Title
highlight link todoTask1    Directory
highlight link todoTask2    Constant
highlight link todoTask3    Normal
highlight link todoDone     DiffAdd
highlight link todoTaskDone DiffDelete
highlight link todoTodo     Todo
highlight link todoInfo     String

let b:current_syntax="todo"
