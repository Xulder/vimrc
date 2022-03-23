" Syntax file
" Language: Tera Template Engine
" Maintainer: Sebastian Jansen
" Latest Revision: 8 March 2022

if exists("b:current_syntax")
    finish
endif

syntax keyword teraKeyword raw endraw block endblock
syntax keyword teraKeyword set and or not in
syntax keyword teraBuiltin lower upper wordcount capitalize
syntax keyword teraBuiltin replace addslashes slugify
syntax keyword teraBuiltin title trim trim_start
syntax keyword teraBuiltin trim_end trim_start_matches nth
syntax keyword teraBuiltin trim_end_matches truncate linebreaksbr
syntax keyword teraBuiltin spaceless striptags first
syntax keyword teraBuiltin last join length
syntax keyword teraBuiltin reverse sort

syn keyword teraTodo containedin=teraComment contained TODO FIXME XXX NOTE
syn region teraComment start="{#" end="#}" contained contains=teraTodo
syn region teraExpr start="{{" end="}}" fold transparent
syn region tera start="{%" end="%}" contained contains=teraTodo

highlight link teraKeyword Keyword
highlight link teraBuiltin Special
highlight link teraComment Comment
highlight link teraTodo TODO

let b:current_syntax = "tera"
