syntax on
set t_Co=256
color mango

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set cursorline
set incsearch

" JSHINT syntax checker
nmap <silent>jshint :call <SID>lint("jsh")<Esc>

function! <SID>lint(lang) "{{{

  let filename = expand("%")
  execute ":w !jshint " . filename . " --config ~/.jshintrc"

endfunction "}}}

" Toggle Numbers On | Off
nmap <silent>lineno :set number!<CR>

" Use JAKE
" NOTE: jake required!
nmap <silent>jake :w !jake<Esc>

" Support for less
au BufNewFile,BufRead *.less set filetype=less

" Turn off tabs->spaces for Makefile
:autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab
