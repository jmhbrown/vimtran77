vimtran77
=========

A few shortcuts, addons and formatting settings.

Extensions
* [Vim-Fugitive](https://github.com/tpope/vim-fugitive) - Git Integration
* [Vim-Sensible](https://github.com/tpope/vim-sensible) - Sanity
* [Vim-Airline](https://github.com/bling/vim-airline) - Fancy Status Bar
* [NerdTree](https://github.com/scrooloose/nerdtree) - Directory Browsing
* [Vim-NerdTree-Tabs](https://github.com/jistr/vim-nerdtree-tabs) - Better Directory Browsing
* [NerdCommenter](https://github.com/scrooloose/nerdcommenter) - Fancy Commenting

Notable shortcuts and commands
* `\n` : toggles nerdtree
* `shift-i` : show dot files in nerdtree 
* `shift-right` `shift-left` `shift-up` `shift-down`: switch between split screen buffers.
* `\ci` : toggle commenting for current line or highlighted text
* `\c$` : comment out the rest of the current line 
* `:Gdiff` : compare staged and working tree versions of files
* `:Gcommit` : commits staged files
* `ctrl-p` : opens autocompletion menu


Installation
------------

```
git clone https://github.com/jmhbrown/vimtran77.git
cd vimtran77
git submodule init
git submodule update
```

Setup
-----

This repo is set up to be compatible with homesick. You can also set it up manually with the following commands.

```
ln -s <path to vimtran77>/home/.vim ~/.vim
ln -a <path to vimtran77>/home/.vimrc ~/.vimrc
```
