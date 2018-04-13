execute pathogen#infect()

set number
set showcmd
set ruler
set nowrap

set tabstop=2
set shiftwidth=2
set autoindent
set copyindent
set smartindent

set hlsearch
set incsearch
set ignorecase

set history=50
set undolevels=1000

set hidden
set nobackup
set noswapfile
set autowrite

set pastetoggle=<F2>
set wildignore+=*/vendor/**

colorscheme gruvbox
set background=dark

nnoremap ; :
nnoremap j gj
nnoremap k gk
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap <silent> ,/ :nohlsearch<CR>
cmap w!! w !sudo tee % >/dev/null

autocmd vimenter * NERDTree
autocmd BufRead,BufNewFile *.blade.php set filetype=html

let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
