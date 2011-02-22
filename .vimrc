set t_Co=256
color goatslacker

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" PHP & JS (jslint) syntax checks
" PHP Syntax checker
command! SynPHP call <SID>lint("php")
"nmap <silent>phplint :call <SID>lint("php")<Esc>

" JSLINT syntax checker
" NOTE: NodeJS 'jslint' required (installed via npm)
command! SynJS call <SID>lint("js")
nmap <silent>jslint :call <SID>lint("js")<Esc>

" JSHINT syntax checker
" NOTE: NodeJS jshint required (installed via npm)
" also added a symbolic link from node-hint to jshint
command! SynJS2 call <SID>lint("jsh")
nmap <silent>jshint :call <SID>lint("jsh")<Esc>

function! <SID>lint(lang) "{{{

  let filename = expand("%")

  if (a:lang == "js")
    execute ":w !jslint " . filename
  elseif (a:lang == "php")
    execute ":w !php -l " . filename
  elseif (a:lang == "jsh")
    execute ":w !jshint " . filename
  endif

endfunction "}}}

" PHPCS
" NOTE: phpcs required (installed via PEAR)
" TODO - configure coding standard
" TODO output into separate error window with nice pretty colors
function! <SID>RunPhpcs() "{{{
  let l:filename=@%
  let l:phpcs_output=system('phpcs '.l:filename)
  echo l:phpcs_output
endfunction "}}}

command! Phpcs call <SID>RunPhpcs()
"nmap <silent>phpcs :call <SID>RunPhpcs()<Esc>

" Toggle Numbers On | Off
nmap <silent>lineno :set number!<CR>

" Use JAKE
" NOTE: jake required!
nmap <silent>jake :w !jake<Esc>
