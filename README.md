vimtran77
=========

A few shortcuts and formatting settings. Also includes better directory browsing with Nerd Tree/Nerd Tree Tabs, some fancy commenting with Nerd Commenter, and some extra sanity with Vim Sensible and Vim Fugitive.

Notable shortcuts
* `\n` : toggles nerdtree
* `shift-i` : show dot files in nerdtree 
* `shift-right` `shift-left` : switch between split screen buffers.
* `\ci` : toggle commenting for current line or highlighted text
* `\c$` : comment out the rest of the current line 


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
