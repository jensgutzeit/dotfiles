" .vimrc

" Start pathogen: https://github.com/tpope/vim-pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set modelines=0

" Color scheme (terminal)
" Color schemes are stored int .vim/colors
set background=dark
colorscheme darkspectrum 

" GUI font
set guifont=Monaco\ 10

" Hide menu and scrollbars
set go=-T
set go=-M

" Security
set modelines=0

" Tabs/spaces
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set noerrorbells
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber
set laststatus=2
set undofile
set history=1000
set title

" Backups
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

" Change leader to ,
let mapleader = ","

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
map <leader><space> :noh<cr>
runtime macros/matchit.vim
nmap <tab> %
vmap <tab> %

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" Use the hjkl keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" And make them work, too.
nnoremap j gj
nnoremap k gk

" Faster Esc with jj instead of <Esc>
inoremap <Esc> <nop>
inoremap jj <ESC>

" Save when losing focus
au FocusLost * :wa

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use \v to open a new vertical split
map <leader>v <C-w>v<C-w>l

" Use \h to open a new horizontal split
map <leader>h <C-w>s<C-w>j

" Clean whitespace with \W
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

