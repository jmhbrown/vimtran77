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
set mouse=a                     " part of disabling scroll
set foldmethod=marker           " use {{{ and }}} to mark folds

" easier window switching
noremap <S-Left> <C-w>h
noremap <S-Right> <C-w>l
noremap <S-Up> <C-w>k
noremap <S-Down> <C-w>j
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l
noremap <S-k> <C-w>k
noremap <S-j> <C-w>j
noremap <S-t><Left> :tabNext<CR>
noremap <S-t><Right> :tabnext<CR>
noremap <S-t>n :tabnew<CR>

" highlight current line
set cursorline
set modeline
set modelines=5
highlight CursorLine cterm=bold

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" - syntax highlighting -
au BufNewFile,BufRead *.pp set filetype=puppet
" BIND zone
au BufNewFile,BufRead */bind/master/*,*/bind/slave/*,*/bind/arpa/* call s:StarSetf('bindzone')
" BIND configuration
au BufNewFile,BufRead arpa.conf,named*.conf set filetype=named
" Sage files
au BufNewFile,BufRead *.sage set filetype=python

" show syntax information by hitting \h
map <Leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" Pmenu colors - not working?
" highlight Pmenu guibg=238 gui=bold

" -- nerdtree settings --
let NERDTreeChDirMode=2 " CWD is changed to nerdtree's root. default: 0
let NERDTreeCasadeOpenSingleChildDir=1 " recursively opens dirs with one child dir. default: 0
let NERDTreeShowBookmarks=1 " automatically show bookmarks menu. default: 0
" Makes opening nerdtree faster
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~M",
    \ "Staged"    : "+A",
    \ "Untracked" : " ",
    \ "Renamed"   : "->R",
    \ "Unmerged"  : "=/>U",
    \ "Deleted"   : "-D",
    \ "Dirty"     : "!",
    \ "Clean"     : "",
    \ "Unknown"   : "?"
    \ }


" -- tagbar settings --
" makes opening the taglist faster
map <Leader>t :TagbarToggle<CR>
" support for puppet
let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'deffile': '~/.vim/ctags/puppet.cnf',
    \ 'kinds': [
        \'c:class',
        \'i:include',
        \'s:site',
        \'n:node',
        \'f:file:1',
        \'v:variable:1',
        \'d:definition'
      \]
    \}

" support for bib
let g:tagbar_type_bib = {
    \ 'ctagstype' : 'bib',
    \ 'deffile': '~/.vim/ctags/bib.cnf',
    \ 'kinds'     : [
      \ 'a:Articles',
      \ 'b:Books',
      \ 'L:Booklets',
      \ 'c:Conferences',
      \ 'B:Inbook',
      \ 'C:Incollection',
      \ 'P:Inproceedings',
      \ 'm:Manuals',
      \ 'T:Masterstheses',
      \ 'M:Misc',
      \ 't:Phdtheses',
      \ 'p:Proceedings',
      \ 'r:Techreports',
      \ 'u:Unpublished',
    \]
  \}

" support for tex
let g:tagbar_type_tex = {
    \ 'ctagstype': 'latex',
    \ 'deffile' : '~/.vim/ctags/latex.cnf',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort'    : 0
  \}
" -- vim-airline settings --
let g:airline#extensions#whitespace#enabled = 1 " show trailing whitespace errors default: 1
let g:airline#extensions#whitespace#mixed_indent_algo = 0 " show mixed space/tabs warning default: 0
let g:airline#extensions#whitespace#symbol = '⇒'
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mi[%s]'
let g:airline#extensions#whitespace#checks = [ 'trailing' ]
let g:airline#extensions#tabline#enabled = 1
" buffer bar
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['<（ ° Д °）'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_z = airline#section#create_right(['l:%l,c:%c'])
endfunction
autocmd VimEnter * call AirlineInit()

" Reads the contents of a template file into the current buffer
function ReadTemplate(filename)
  let l:filepath = '~/.vim/templates/' . a:filename
  execute ':0r ' . l:filepath
endfunction

" Shortcut for standalone-graphic template
function TemplateStandaloneGraphic()
  call ReadTemplate('standalone-graphic.tex')
  execute '/begin{document}'
endfunction

" Shortcut for default latex template
function TemplateDefaultLatex()
  call ReadTemplate('default.tex')
  execute '/begin{document}'
endfunction
