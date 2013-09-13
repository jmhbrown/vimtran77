call pathogen#infect()
syntax on
filetype plugin indent on


" ---- Settings ---

" tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set number                      " show line numbers
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1000                " remember more commands and search history
set undolevels=1000             " use many levels of undo
set ruler                       " show the cursor position all the time
set guifont=Courier\ New        " nice font
set nobackup                    " don't make swp files


" highlight current line
set cursorline 
set modeline
set modelines=5
highlight CursorLine cterm=bold

" collapse things between certain tags. (I'm not sure how exactly this works.)
set foldmethod=indent
highlight FoldColumn ctermbg=black ctermfg=darkred
highlight Folded ctermbg=black ctermfg=darkred

"   ---   Mappings   ---

" Makes opening nerdtree faster
map <Leader>n <plug>NERDTreeTabsToggle<CR> 

" cd to directory of current file
map c :cd %:p:h

"  --  bracket completion  --
" basic competion
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

inoremap ( ()<Left>
inoremap (<CR> (<CR>)<Esc>O
inoremap (( (
inoremap () ()
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap < <><Left>
inoremap <<CR> <<CR>><Esc>O
inoremap << <
inoremap <> <>
inoremap <expr> > strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

inoremap [ []<Left>
inoremap [<CR> [<CR>]<Esc>O
inoremap [[ [
inoremap [] []
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
