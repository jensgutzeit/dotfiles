" .vimrc

" Start pathogen: https://github.com/tpope/vim-pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set modelines=0

" Generate documentation for all plugins installed under .vim/bundle
Helptags

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

" Apply all substitutions globally
"
" It is enough to write :%s/foo/bar/ instead of :%s/foo/bar/g
set gdefault

" Clear out a search with <leader><space>
map <leader><space> :noh<cr>

" Use <tab> to match brackets
nmap <tab> %
vmap <tab> %

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" Disallow arrow key in normal AND insert mode
" Use hjkl instead
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

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

" <F5> inserts current date and time
:nnoremap <F5> "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
:inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>

