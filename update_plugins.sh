#!/bin/bash

declare -a plugins=(
'ctrlp.vim'
'goyo.vim'
'gruvbox'
'nerdtree'
'nginx.vim'
'syntastic'
'vim-airline'
'vim-fugitive'
'vim-gitgutter'
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
