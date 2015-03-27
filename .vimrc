set nu
set hls
set hidden
set incsearch
set history=50
set undolevels=1000
set noswapfile
set ruler
set showcmd
set tabstop=2

set autoindent
set shiftwidth=2
set ignorecase
set smartcase

syntax enable

execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
colorscheme gruvbox
au VimEnter * NERDTree rails
