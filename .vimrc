execute pathogen#infect()
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
  source ~/.vim_runtime/my_configs.vim
catch
endtry

set number
set showcmd
set ruler
set nowrap

set tabstop=2
set shiftwidth=2
set autoindent
set copyindent

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

let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Laravel framework commons
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81Gf(%O
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

" Concept - load underlying class for Laravel
function! FacadeLookup()
  let facade = input('Facade Name: ')
  let classes = {
        \       'Form': 'Html/FormBuilder.php',
        \       'Html': 'Html/HtmlBuilder.php',
        \       'File': 'Filesystem/Filesystem.php',
        \       'Eloquent': 'Database/Eloquent/Model.php'
        \   }

  execute ":edit vendor/laravel/framework/src/Illuminate/" . classes[facade]
endfunction
nmap ,lf :call FacadeLookup()<cr>

" Prepare a new PHP class
function! Class()
  let name = input('Class name? ')
  let namespace = input('Any Namespace? ')

  if strlen(namespace)
    exec 'normal i<?php namespace ' . namespace . ';
  else
    exec 'normal i<?php
  endif

  " Open class
  exec 'normal iclass ' . name . ' {^M}^[O^['

  exec 'normal i^M    public function __construct()^M{^M ^M}^['
endfunction
nmap ,1  :call Class()<cr>

" Add a new dependency to a PHP class
function! AddDependency()
  let dependency = input('Var Name: ')
  let namespace = input('Class Path: ')

  let segments = split(namespace, '\')
  let typehint = segments[-1]

  exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['

  " Remove opening comma if there is only one dependency
  exec 'normal :%s/(, /(/g
  '
endfunction
nmap ,2 :call AddDependency()<cr>
