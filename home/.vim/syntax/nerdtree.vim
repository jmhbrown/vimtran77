" NERDTree File highlighting based on comments from @scrooloose and @ghost on github
function! NERDTreeHighlightFile(extension, fg)
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermfg='. a:fg
endfunction

" Tex files
call NERDTreeHighlightFile('tex', 'green')
call NERDTreeHighlightFile('bib', 'blue')
""" latex build files
call NERDTreeHighlightFile('aux', 'black')
call NERDTreeHighlightFile('bbl', 'black')
call NERDTreeHighlightFile('blg', 'black')
call NERDTreeHighlightFile('fls', 'black')
call NERDTreeHighlightFile('log', 'black')
call NERDTreeHighlightFile('out', 'black')
call NERDTreeHighlightFile('synctex.gz', 'black')
