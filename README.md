# Base 1 - A Personal Vim Setup
Suitable for vim beginners and web developers. Gluten free.
Overall, magical vim goodness without the bloat.


## Installation

```
cd ~
git clone https://github.com/thefitriali/vim-base1.git ~/.vim-base1
ln -s ~/.vim-base1/vimrc ~/.vimrc
cd ~/.vim-base1
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
