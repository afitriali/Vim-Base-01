#!/bin/bash

declare -a plugins=(
'ctrlp.vim'
'goyo.vim'
'gruvbox'
'html5.vim'
'nerdtree'
'nginx.vim'
'syntastic'
'vim-airline'
'vim-fugitive'
'vim-gitgutter'
'vim-javascript'
'vim-signify'
'vim-surround'
'vim-yankstack'
'YouCompleteMe'
)

for plugin in "${plugins[@]}"
do
cd .vim/bundle/"$plugin"
echo "updating plugin: $plugin"
git pull
cd ../../..
done

echo Update Completed!
