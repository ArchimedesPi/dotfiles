call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

set nocompatible

set history=500

filetype plugin on
filetype indent on

au FileType yaml setl sw=2 sts=2 et

set autoread

set hidden

set wildmenu
set wildmode=longest:full,full

set ruler

if has('mouse')
	set mouse=a
end

set ignorecase
set smartcase
set hlsearch
set incsearch

set lazyredraw "no redraw during macros

set showmatch

set number

syntax enable
colorscheme Tomorrow-Night 
set background=dark

set encoding=utf8

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

autocmd BufRead,BufNewFile *.md setlocal spell

set lbr
set tw=500

set ai
set si
set wrap

set laststatus=2
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <space> /
map <c-space> ?

map <F8> :TagbarToggle<CR> 
