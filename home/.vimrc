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
set mouse=a

" easier window switching
noremap <S-Left> <C-w>h
noremap <S-Right> <C-w>l
noremap <S-Up> <C-w>k
noremap <S-Down> <C-w>j

" highlight current line
set cursorline 
set modeline
set modelines=5
highlight CursorLine cterm=bold

" collapse things between certain tags. (I'm not sure how exactly this works.)
set foldmethod=indent
highlight FoldColumn ctermbg=0 ctermfg=152
highlight Folded ctermbg=0 ctermfg=152


" -- nerdtree settings --
let NERDTreeWinSize=40 " sidebar width. default: 31
let NERDTreeCasadeOpenSingleChildDir=1 " recursively opens dirs with one child dir. default: 0
let NERDTreeShowBookmarks=1 " automatically show bookmarks menu. default: 0
" Makes opening nerdtree faster
map <Leader>n <plug>NERDTreeTabsToggle<CR> 

" -- vim-airline settings --
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['%f'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_z = airline#section#create_right(['l:%l,c:%c'])
endfunction
autocmd VimEnter * call AirlineInit()
" don't check for whitespace
let g:airline#extensions#whitespace#enabled = 0
