" Vim syntax file
" Language:         Extended Backus–Naur form
" Maintainer:       Suirabu <suirabu.dev@gmail.com>
" Latest Revision:  7-30-2022

if exists("b:current_syntax")
    finish
endif

syn keyword ebnfTodo FIXME NOTE TODO XXX
syn region ebnfComment start="(\*" end="\*)" contains=ebnfTodo

syn region ebnfTerminal start='"' end='"'
syn region ebnfTerminal start="'" end="'"

syn region ebnfSpecial start="?" end="?"

syn match ebnfOperator "*"
syn match ebnfOperator "-"
syn match ebnfOperator ","
syn match ebnfOperator "|"
syn match ebnfOperator "="
syn match ebnfOperator ";"
syn match ebnfOperator "."

syn match ebnfIdentifier "[a-z|A-Z]\w*"

hi def link ebnfTodo Todo
hi def link ebnfComment Comment

hi def link ebnfTerminal String

hi def link ebnfSpecial Statement
hi def link ebnfOperator Operator

hi def link ebnfIdentifier Identifier

let b:current_syntax = "ebnf"
