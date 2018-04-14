# Base 1 - A Personal Vim Setup

I work with a lot of HTML/CSS/JS/PHP. This vim setup contain things like automatically detecting quirky filetype like 'blade.php' = 'html'. Also handles indenting for JS inside HTML and highlighting opening and closing tags. Overall, magical vim goodness

## Installation

```
cd ~
git clone https://github.com/thefitriali/vim-base1.git ~/.vim-base1
ln -s ~/.vim-base1/vimrc ~/.vimrc
cd ~/.vim-base1
git submodule init
git submodule update
mkdir temp & mkdir temp/undodir
```

Additional configuration required:
https://github.com/Valloric/YouCompleteMe

## Update

```
git pull
git submodule init
git update
```
