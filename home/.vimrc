call pathogen#infect()

" ---- Settings ---
syntax on
filetype plugin indent on


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
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l
noremap <S-k> <C-w>k
noremap <S-j> <C-w>j

" highlight current line
set cursorline
set modeline
set modelines=5
highlight CursorLine cterm=bold

" collapse tabbed lines
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
" buffer bar
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['<（ ° Д °）'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_z = airline#section#create_right(['l:%l,c:%c'])
endfunction
autocmd VimEnter * call AirlineInit()
