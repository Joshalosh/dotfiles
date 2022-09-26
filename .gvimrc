" Don't try to be vi compatible
set nocompatible

" Helps force plugin to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
"filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show hybrid numbers
set number relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=100
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Add useful tabs and indentsss
set smarttab
set smartindent

" Cursor motion
set scrolloff=8
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/''<cr> " clear search

" Remap help key
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Color scheme
set background=dark
colorscheme gruvbox

" Font
set guifont=Consolas:h10

" Auto indenting
set autoindent

" Add colour to the current cursor line
set cursorline 
highlight CursorLine cterm=none ctermbg=DarkGrey ctermfg=none

" Allow to copy from clipboard
set clipboard=unnamed

" Turn off gui menu and toolbar
set guioptions-=m
set guioptions-=T

" Stop Vim creating undo backup file
set noundofile

" Stop Vim creating '~' backup file
set nobackup

" Set for mouse to register
set mouse=a

" Forces all horizontal splits to go below the current window
set splitbelow

" Forces all vertical splits to go to the right of the current window 
set splitright
