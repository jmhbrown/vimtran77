call pathogen#infect()
syntax on
filetype plugin indent on

" ---- Settings ---

" tab settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set number                      " show line numbers
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1000                " remember more commands and search history
set undolevels=1000             " use many levels of undo
set ruler                       " show the cursor position all the time
set guifont=Courier\ New        " nice font

" easier window switching
noremap <S-Left> <C-w>h
noremap <S-Right> <C-w>l

" highlight current line
set cursorline 
set modeline
set modelines=5
highlight CursorLine cterm=bold

" collapse things between certain tags. (I'm not sure how exactly this works.)
set foldmethod=indent
highlight FoldColumn ctermbg=black ctermfg=darkred
highlight Folded ctermbg=black ctermfg=darkred


" -- nerdtree settings --
let NERDTreeWinSize=40 " sidebar width. default: 31
let NERDTreeCasadeOpenSingleChildDir=1 " recursively opens dirs with one child dir. default: 0
let NERDTreeShowBookmarks=1 " automatically show bookmarks menu. default: 0

"   ---   Mappings   ---

" Makes opening nerdtree faster
map <Leader>n <plug>NERDTreeTabsToggle<CR> 

" cd to directory of current file
map c :cd %:p:h
