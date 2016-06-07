call plug#begin('~/.vim/plugged')
" themes
Plug 'junegunn/seoul256.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'flazz/vim-colorschemes'

" utility
Plug 'editorconfig/editorconfig-vim'
Plug 'qpkorr/vim-bufkill'

" integration
Plug 'tpope/vim-fugitive'

" ui
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" highlighting and syntax
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'

" prose
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

set nocompatible

set history=500

set t_Co=256

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
let g:airline_powerline_fonts = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" make nerdtree open when vim is opened w/o args
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" make closing vim with a nerdtree open possible with one :q
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <space> /
map <c-space> ?

map <C-n> :NERDTreeToggle<CR>

map <F8> :TagbarToggle<CR> 
