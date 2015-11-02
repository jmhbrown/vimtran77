vimtran77
=========

A few shortcuts, addons and formatting settings.

Extensions
* [Vim-Fugitive](https://github.com/tpope/vim-fugitive) - Git Integration
* [Vim-Sensible](https://github.com/tpope/vim-sensible) - Some Sane Defaults
* [Vim-Airline](https://github.com/bling/vim-airline) - Fancy Status Bar
* [NerdTree](https://github.com/scrooloose/nerdtree) - Directory Browsing
* [Vim-NerdTree-Tabs](https://github.com/jistr/vim-nerdtree-tabs) - Directory Browsing Works Well With Tabs
* [Tagbar](https://github.com/majutsushi/tagbar) - Generate/View tags for current buffer
* [NerdCommenter](https://github.com/scrooloose/nerdcommenter) - Fancy Commenting
* [ShowMarks](https://github.com/vim-scripts/showmarks) - Show marks

Notable shortcuts and commands
* `\n` : toggles nerdtree
* `shift-i` : show dot files in nerdtree 
* `shift-right` `shift-left` `shift-up` `shift-down`: switch between split screen buffers.
* `\ci` : toggle commenting for current line or highlighted text
* `\c$` : comment out the rest of the current line 
* `:Gdiff` : compare staged and working tree versions of files
* `:Gcommit` : commits staged files
* `ctrl-p` : opens autocompletion menu
* `shift-t right` `shift-t left` : switch between tabs
* `shift-t n` : open a new tab
* `\mt` : toggle marks

Other Additions
* [Puppet syntax highlighting](https://raw.githubusercontent.com/puppetlabs/puppet-syntax-vim/master/syntax/puppet.vim)

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
ln -s <path to vimtran77>/home/.vimrc ~/.vimrc
```
