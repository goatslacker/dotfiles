syntax on
set t_Co=256
color mango

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set cursorline

" PHP & JS (jslint) syntax checks
" PHP Syntax checker
command! SynPHP call <SID>lint("php")
"nmap <silent>phplint :call <SID>lint("php")<Esc>

" JSHINT syntax checker
" NOTE: NodeJS jshint required (installed via npm)
" also added a symbolic link from node-hint to jshint
command! SynJS call <SID>lint("jsh")
nmap <silent>jshint :call <SID>lint("jsh")<Esc>

function! <SID>lint(lang) "{{{

  let filename = expand("%")

  if (a:lang == "jsh")
    execute ":w !jshint " . filename . " --config ~/.jshintrc"
  elseif (a:lang == "php")
    execute ":w !php -l " . filename
  endif

endfunction "}}}

" Toggle Numbers On | Off
nmap <silent>lineno :set number!<CR>

" Use JAKE
" NOTE: jake required!
nmap <silent>jake :w !jake<Esc>

" Support for less
au BufNewFile,BufRead *.less set filetype=less
" jsm files
au BufNewFile,BufRead *.jsm set filetype=javascript
