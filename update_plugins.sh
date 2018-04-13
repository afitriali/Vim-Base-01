#!/bin/bash

declare -a plugins=(
'ctrlp.vim'
'goyo.vim'
'gruvbox'
'nerdtree'
'nginx.vim'
'syntastic'
'vim-airline'
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
