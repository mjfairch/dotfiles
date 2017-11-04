set background=light    " default colors assume light background
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "mjf-light"

" Lines commented with (*) are groups, and entries below are subgroups.
" Refer to: http://vimdoc.sourceforge.net/htmldoc/syntax.html

" ************************************************************
" VIM features
" ************************************************************
hi Normal ctermbg=231 ctermfg=000           " default color settings

" ************************************************************
" VIM features
" ************************************************************
hi linenr ctermbg=231 ctermfg=000           " only when :set number
hi cursorline cterm=none ctermbg=255        " only when :set cursorline
hi cursorlinenr ctermbg=255 ctermfg=000     " only when :set cursorline

" ************************************************************
" Syntax highlighting
" ************************************************************
hi comment ctermbg=231 ctermfg=008          " (*) comments

hi constant ctermbg=231 ctermfg=020         " (*) any constant
"hi string ctermbg=231 ctermfg=020           " string literals
"hi character ctermbg=231 ctermfg=000        " character literals
"hi number ctermbg=231 ctermfg=013           " integer literals
"hi float ctermbg=231 ctermfg=013            " floating point literals
"hi boolean ctermbg=231 ctermfg=000          " true, false

hi identifier ctermbg=231 ctermfg=005       " (*) variable names
"hi function ctermbg=231 ctermfg=000         " function and method names

hi statement ctermbg=231 ctermfg=009        " (*) public, using, return
"hi conditional ctermbg=231 ctermfg=000      " if, else
"hi repeat ctermbg=231 ctermfg=009           " for, do, while
"hi label ctermbg=231 ctermfg=000            " case, default
"hi operator ctermbg=231 ctermfg=000         " sizeof, etc.
"hi keyword ctermbg=231 ctermfg=000
"hi exception ctermbg=231 ctermfg=000        " try, catch, throw

hi preproc ctermbg=231 ctermfg=034          " (*) preprocessor 
"hi include ctermbg=231 ctermfg=040
"hi define ctermbg=231 ctermfg=000
"hi macro ctermbg=231 ctermfg=000
"hi precondit ctermbg=231 ctermfg=000

hi type ctermbg=231 ctermfg=030             " (*) int, double, char, etc.
"hi structure ctermbg=231 ctermfg=000        " struct, union, typedef, class
"hi storageclass ctermbg=231 ctermfg=000
"hi typedef ctermbg=231 ctermfg=000

hi special ctermbg=231 ctermfg=062          " (*) any special symbol
"hi specialchar ctermbg=231 ctermfg=000
"hi tag ctermbg=231 ctermfg=000
"hi delimiter ctermbg=231 ctermfg=000
"hi specialcomment ctermbg=231 ctermfg=000
"hi debug ctermbg=231 ctermfg=000

hi todo cterm=bold ctermbg=231 ctermfg=196  " todo, fixme
