# Base 1 - A Personal Vim Setup
Suitable for vim beginners and web developers. Gluten free.
Overall, magical vim goodness without the bloat.

Requires: Font with Powerline Glyph/Symbol.

Themes: Gruvbox (default), Vimhardaway, Zenburn.
Change using :colorscheme.

## Installation

```
cd ~
git clone --recurse-submodules https://github.com/thefitri/Vim-Base-01.git ~/.Vim-Base-01
ln -s ~/.Vim-Base-01/vimrc ~/.vimrc
cd ~/.Vim-Base-01
mkdir temp && mkdir temp/undodir && mkdir temp/viewdir
```

start vim and run
```
:PlugInstall
```

Restart vim.
