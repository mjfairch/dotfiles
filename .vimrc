syntax on             " enable syntax highlighting
set background=dark   " hint to colorscheme for its choice of colors
color ghostbuster     " use this color scheme when vim opens
set autoindent        " new line mimics leading whitespace of preceding line
set expandtab         " replace tabs with spaces
set tabstop=4         " number of spaces per tab
set shiftwidth=4      " When using indent operator >
set history=1000      " command history; :help history
set showcmd           " show incomplete commands
set number            " line numbering
set ruler             " show row/column cursor position
set cc=80             " colorize this column
set tw=0              " textwidth, used for wrapping; 0 prevents wrapping.
set formatoptions+=t  " wrap at textwidth during insert mode
set hidden            " buffer hiding without saves
set showmatch         " hightlight matching brackets
set incsearch         " show initial match as search is being typed
set fileformat=unix   " end lines with UNIX LF (omit CR)
set clipboard=unnamed " enable copying to OS clipboard
set backspace=indent,eol,start " behavior for backspace key

" http://joelonsoftware.com/articles/Unicode.html
if has("multi_byte")
    set enc=utf-8
    set fencs=ucs-bom,utf-8,latin1
    setglobal fenc=utf-8
endif

if has("mouse")
    set mouse=a       " allow mouse clicks to move cursor in all modes
endif

" For Python files, convert tabs to 4 spaces
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" On buffer save, remove trailing whitespace on buffer save
autocmd BufWritePre * %s/\s\+$//e
