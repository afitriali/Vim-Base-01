""""""""""""""""""""""""""""""""""""""""""""""""""
" LOADS PLUGINS USING PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""

call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on
filetype indent on
syntax enable

colorscheme gruvbox

set background=dark
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
set history=500
set undolevels=1000
set hidden
set nobackup
set noswapfile
set autoread
set autowrite
set pastetoggle=<F2>
set wildignore+=*/vendor/**

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
map <leader>ss :setlocal spell!<cr>

command W w !sudo tee % > /dev/null

try
    set undodir=~/.vim/temp/undodir
    set undofile
catch
endtry

" TO-DO: Add auto-complete tags and brackets

""""""""""""""""""""""""""""""""""""""""""""""""""
" SET FILETYPE FOR CUSTOM FILE EXTENSION
""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufRead,BufNewFile *.blade.php set filetype=html

""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURE PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd vimenter * NERDTree
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=20
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline_left_sep='>'
let g:airline_right_sep='<'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste

