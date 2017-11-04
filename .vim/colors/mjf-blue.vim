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
hi Normal ctermbg=004 ctermfg=015          " default color settings

" ************************************************************
" VIM features
" ************************************************************
hi linenr ctermbg=004 ctermfg=255           " only when :set number
hi cursorline cterm=none ctermbg=025        " only when :set cursorline
hi cursorlinenr ctermbg=025 ctermfg=255     " only when :set cursorline

" ************************************************************
" Syntax highlighting
" ************************************************************
hi comment ctermbg=004 ctermfg=208          " (*) comments

hi constant ctermbg=004 ctermfg=011         " (*) any constant
"hi string ctermbg=004 ctermfg=020           " string literals
"hi character ctermbg=004 ctermfg=000        " character literals
"hi number ctermbg=004 ctermfg=013           " integer literals
"hi float ctermbg=004 ctermfg=013            " floating point literals
"hi boolean ctermbg=004 ctermfg=000          " true, false

hi identifier ctermbg=004 ctermfg=255       " (*) variable names
"hi function ctermbg=004 ctermfg=000         " function and method names

hi statement ctermbg=004 ctermfg=014        " (*) public, using, return
"hi conditional ctermbg=004 ctermfg=000      " if, else
"hi repeat ctermbg=004 ctermfg=009           " for, do, while
"hi label ctermbg=004 ctermfg=000            " case, default
"hi operator ctermbg=004 ctermfg=000         " sizeof, etc.
"hi keyword ctermbg=004 ctermfg=000
"hi exception ctermbg=004 ctermfg=000        " try, catch, throw

hi preproc ctermbg=004 ctermfg=040          " (*) preprocessor 
"hi include ctermbg=004 ctermfg=040
"hi define ctermbg=004 ctermfg=000
"hi macro ctermbg=004 ctermfg=000
"hi precondit ctermbg=004 ctermfg=000

hi type ctermbg=004 ctermfg=142             " (*) int, double, char, etc.
"hi structure ctermbg=004 ctermfg=000        " struct, union, typedef, class
"hi storageclass ctermbg=004 ctermfg=000
"hi typedef ctermbg=004 ctermfg=000

hi special ctermbg=004 ctermfg=062          " (*) any special symbol
"hi specialchar ctermbg=004 ctermfg=000
"hi tag ctermbg=004 ctermfg=000
"hi delimiter ctermbg=004 ctermfg=000
"hi specialcomment ctermbg=004 ctermfg=000
"hi debug ctermbg=004 ctermfg=000

hi todo cterm=bold ctermbg=004 ctermfg=196  " todo, fixme
