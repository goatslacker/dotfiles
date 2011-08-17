syntax on
set t_Co=256
color mango

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set cursorline

" Searching
set incsearch

" JSHINT syntax checker
function! <SID>lint() "{{{
  let filename = expand("%")
  execute ":w !jshint " . filename . " --config ~/.jshintrc"
endfunction "}}}

" Node
function! <SID>nodejs() "{{{
  let filename = expand("%")
  execute ":w !node " . filename
endfunction "}}}

" Silent
nmap <silent>jake :w !jake<ESC>
nmap <silent>jshint :call <SID>lint()<Esc>
nmap <silent>jsnode :call <SID>nodejs()<Esc>

" Leader
map <Leader>b :w !make<CR>
map <Leader>f :w !forge<CR>
" Toggle Numbers On | Off
map <Leader>n :set number!<CR>

" Turn off tabs->spaces for Makefile
:autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
