set nocompatible
execute pathogen#infect()
filetype plugin indent on

" -----------------------------------------------------------------------------
"                               GENERAL BEHAVIOR
" -----------------------------------------------------------------------------
set nobackup                           " no ~filename backups
set undolevels=100                     " how many undo levels
set backspace=indent,eol,start         " backspace behaviour
set foldmethod=indent                  " fold code on indent (z-a to toggle)
set hlsearch                           " highlight all search results
set ignorecase                         " use case insensitive searching
set smartcase                          " use case if present in search
set autoindent                         " auto-indent new lines
set expandtab                          " use spaces instead of tabs
set smarttab                           " enable smart-tabs
set shiftwidth=4                       " number of auto-indent spaces
set softtabstop=4                      " number of spaces per Tab

" -----------------------------------------------------------------------------
"                            COLOR & VISUAL OPTIONS
" -----------------------------------------------------------------------------
syntax enable                          " enable syntax highlighting
set number                             " show line numbers
set showbreak=+++                      " wrapped line prefix
set showmatch                          " highlight matching braces
set t_Co=256                           " 256 color support
set t_ut=                              " fix background color in tmux
set background=dark                    " should match terminal (light or dark)
colorscheme gruvbox                    " cycle with :colorscheme <tab>
set cursorline                         " highlight current line

" underline current line
hi CursorLine cterm=UNDERLINE gui=UNDERLINE

" set gui font
if has('gui_running')
  set guifont=Roboto\ Mono\ for\ Powerline:h11
endif

" -----------------------------------------------------------------------------
"                                  STATUS BAR
" -----------------------------------------------------------------------------
set ruler	                       " show row and column position
set laststatus=2                       " always show status bar
set cmdheight=1                        " 1 line in status bar

" -----------------------------------------------------------------------------
"                                    MOUSE
" -----------------------------------------------------------------------------
set mouse=a                            " enable mouse usage & scrolling
set selectmode-=mouse                  " no inserting on mouse highlight

" -----------------------------------------------------------------------------
"                     MAKE VIM REMEMBER LAST OPENED POSITION
" -----------------------------------------------------------------------------
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \ exe "normal g'\"" |
    \ endif

" -----------------------------------------------------------------------------
"                                CTRL-P SETTINGS
" -----------------------------------------------------------------------------
set wildignore+=*/venv/*,*.pyc,*.sw*,*.zip,*/node_modules/*
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
\ }
let g:ctrlp_tabpage_position = 'al'   " tabs open after last tab
let g:ctrlp_open_new_file = 't'       " new file opens in new tab
let g:ctrlp_open_multiple_files = 't' " files open in new tab

" -----------------------------------------------------------------------------
"                             SYNTASTIC SETTINGS
" -----------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" -----------------------------------------------------------------------------
"                               AIRLINE SETTINGS
" -----------------------------------------------------------------------------
let g:airline_theme = 'gruvbox'

" -----------------------------------------------------------------------------
"                                BLACK SETTINGS
" -----------------------------------------------------------------------------
autocmd BufWritePre *.py execute ':Black'

" -----------------------------------------------------------------------------
"                              CUSTOM KEYMAPPINGS
" -----------------------------------------------------------------------------
:map ,d :! clear; git diff --color % <cr>
:map ,b :! clear; git blame % <cr>
:map ,cp :normal i#  <ESC>
:map ,cj :normal i// <ESC>
:map ,cs :normal i-- <ESC>
vnoremap < <gv
vnoremap > >gv
