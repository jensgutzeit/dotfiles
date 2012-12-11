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
nnoremap <F5> "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>

" Set first vimwiki to reside on USB stick
let g:vimwiki_list = [{'path': '/mnt/usbstick/vimwiki',
                     \ 'syntax': 'markdown'}]

" Use <leader>t to toggle status of a task (for vim-task)
nnoremap <silent> <leader>t :call Toggle_task_status()<CR>
inoremap <silent> <leader>t <ESC>:call Toggle_task_status()<CR>i

function! VimwikiLinkHandler(link) "{{{ Use Vim to open links with the
  " 'vlocal:' or 'vfile:' schemes.  E.g.:
  "   1) [[vfile:///~/Code/PythonProject/abc123.py]], and
  "   2) [[vlocal:./|Wiki Home]]
  let link = a:link
  if link =~ "vlocal:" || link =~ "vfile:"
    let link = link[1:]
  else
    return 0
  endif
  let [idx, scheme, path, subdir, lnk, ext, url] = 
       \ vimwiki#base#resolve_scheme(link, 0)
  if g:vimwiki_debug
    echom 'LinkHandler: idx='.idx.', scheme=[v]'.scheme.', path='.path.
         \ ', subdir='.subdir.', lnk='.lnk.', ext='.ext.', url='.url
  endif
  if url == ''
    echom 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    call vimwiki#base#edit_file('tabnew', url, [], 0)
    return 1
  endif
endfunction " }}}

