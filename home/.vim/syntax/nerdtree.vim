" NERDTree File highlighting based on comments from @scrooloose and @ghost on github
function! NERDTreeHighlightFile(extension, fg)
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermfg='. a:fg
endfunction

function! NERDTreeHighlightLatexBuild(fg,...)
  for extension in a:000
    exec 'autocmd filetype nerdtree syn match LatexBuild #^\s\+.*'. extension .'$#'
  endfor
  exec 'autocmd filetype nerdtree highlight LatexBuild ctermfg='. a:fg
endfunction


" Tex files
call NERDTreeHighlightFile('tex', 'green')
call NERDTreeHighlightFile('bib', 'blue')
"""" latex build files
call NERDTreeHighlightLatexBuild('black','synctex.gz', 'aux', 'bbl', 'blg', 'fls', 'log', 'out','toc')

