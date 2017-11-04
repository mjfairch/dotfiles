set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "mjf-dark"

" Lines commented with (*) are groups, and entries below are subgroups.
" Refer to: http://vimdoc.sourceforge.net/htmldoc/syntax.html

" ************************************************************
" VIM features
" ************************************************************
hi Normal ctermbg=233 ctermfg=255           " default color settings
hi linenr ctermbg=233 ctermfg=060           " only when :set number
hi cursorline cterm=NONE ctermbg=236        " only when :set cursorline
hi cursorlinenr ctermbg=236 ctermfg=219     " only when :set cursorline
hi colorcolumn ctermbg=024 ctermfg=255      " 

" ************************************************************
" Syntax highlighting
" ************************************************************
hi comment ctermbg=233 ctermfg=243          " (*) comments

hi constant ctermbg=233 ctermfg=009         " (*) any constant
hi string ctermbg=233 ctermfg=115           " string literals
hi character ctermbg=233 ctermfg=208        " character literals
hi number ctermbg=233 ctermfg=114           " integer literals
hi float ctermbg=233 ctermfg=114            " floating point literals
hi boolean ctermbg=233 ctermfg=154          " true, false

hi identifier ctermbg=233 ctermfg=255       " (*) variable names
hi function ctermbg=233 ctermfg=255         " function and method names

hi statement ctermbg=233 ctermfg=198        " (*) public, using, return
hi conditional ctermbg=233 ctermfg=210      " if, else
hi repeat ctermbg=233 ctermfg=047           " for, do, while
hi label ctermbg=233 ctermfg=212            " case, default
hi operator ctermbg=233 ctermfg=120         " sizeof, etc.
hi keyword ctermbg=233 ctermfg=009          " nullptr, etc.
hi exception ctermbg=233 ctermfg=105        " try, catch, throw

hi preproc ctermbg=233 ctermfg=042          " (*) preprocessor 
hi include ctermbg=233 ctermfg=255
"hi define ctermbg=233 ctermfg=255
"hi macro ctermbg=233 ctermfg=255
"hi precondit ctermbg=233 ctermfg=255

hi type ctermbg=233 ctermfg=228             " (*) int, double, char, etc.
hi structure ctermbg=233 ctermfg=200        " struct, union, typedef, class
"hi storageclass ctermbg=233 ctermfg=255
"hi typedef ctermbg=233 ctermfg=226

hi special ctermbg=233 ctermfg=255          " (*) any special symbol
"hi specialchar ctermbg=233 ctermfg=255
"hi tag ctermbg=233 ctermfg=255
"hi delimiter ctermbg=233 ctermfg=255
"hi specialcomment ctermbg=233 ctermfg=255
"hi debug ctermbg=233 ctermfg=255

hi todo ctermbg=004 ctermfg=011             " todo, fixme
