set t_Co=256
color goatslacker

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" PHP & JS (jslint) syntax checks
" PHP Syntax checker
command! SynPHP call <SID>lint("php")
nmap <silent>phpl :call <SID>lint("php")<Esc>

" JSLINT syntax checker
" NodeJS jslint required (installed via npm)
command! SynJS call <SID>lint("js")
nmap <silent>jslint :call <SID>lint("js")<Esc>

function! <SID>lint(lang) "{{{

  let filename = expand("%")

  if (a:lang == "js")
    execute ":w !jslint " . filename
  elseif (a:lang == "php")
    execute ":w !php -l " . filename
  endif

endfunction "}}}
