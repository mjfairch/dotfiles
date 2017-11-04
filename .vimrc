syntax on             " Enable syntax highlighting
set background=dark   " Hint to colorscheme for its choice of colors
color ghostbuster     " Use this color scheme when vim opens
set autoindent        " New line mimics leading whitespace of preceding line
set expandtab         " Peplace tabs with spaces
set tabstop=4         " Number of spaces per tab
set shiftwidth=4      " When using indent operator >
set history=1000      " Command history; :help history
set showcmd           " Show incomplete commands
set number            " Line numbering
set ruler             " Show row/column cursor position
set cc=80             " Colorize this column
set tw=0              " Textwidth, used for wrapping; 0 prevents wrapping.
set formatoptions+=t  " Wrap at textwidth during insert mode
set hidden            " Buffer hiding without saves
set showmatch         " Hightlight matching brackets
set incsearch         " Show initial match as search is being typed
set fileformat=unix   " End lines with UNIX LF (omit CR)
set clipboard=unnamed " Enable copying to OS clipboard
set backspace=indent,eol,start " behavior for backspace key
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

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
