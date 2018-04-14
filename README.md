# Base 1 - A Personal Vim Setup
Suitable for vim beginners and web developers. Gluten free.
Overall, magical vim goodness without the bloat.

Requires: Font with Powerline Glyphy/Symbol

Themes: Dracula, Gruvbox (default), Vimhardaway, Zenburn.
Change using :colorscheme.

## Installation

```
cd ~
git clone https://github.com/thefitriali/Vim-Base-01.git ~/.Vim-Base-01
ln -s ~/.Vim-Base-01/vimrc ~/.vimrc
cd ~/.Vim-Base-01
git submodule init
git submodule update
mkdir temp && mkdir temp/undodir && mkdir temp/viewdir
```

Additional configuration required:
https://github.com/Valloric/YouCompleteMe

## Update

```
git pull
git submodule init
git submodule update
```
