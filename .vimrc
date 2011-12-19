set nocompatible

" syntax highlighting
syntax on
set t_Co=256
color mango

set autoindent
set smartindent
set pastetoggle=<F2>

" whitespace
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set cursorline

set showcmd

" Searching
set incsearch

" JSHINT syntax checker
function! <SID>lint() "{{{
  let filename = expand("%")
  execute ":w !jshint " . filename . " --config ~/.jshintrc"
endfunction "}}}

function! <SID>R() "{{{
  let filename = expand("%")

  if &filetype == 'javascript'
    execute ":w !node " . filename
  elseif &filetype == 'python'
    execute ":w !python " . filename
  endif
endfunction "}}}


" Leader
map <Leader>b :w !make<CR>
map <Leader>f :w !forge<CR>
" Toggle Numbers On | Off
map <Leader>l :call <SID>lint()<CR>
map <Leader>n :set number!<CR>
map <Leader>p :call <SID>R()<CR>
map <Leader>w :NERDTreeToggle<CR>

" Use tabs for Makefile
autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
   au!
   autocmd BufReadPost *
            \ if expand("<afile>:p:h") !=? $TEMP |
            \   if line("'\"") > 1 && line("'\"") <= line("$") |
            \     let JumpCursorOnEdit_foo = line("'\"") |
            \     let b:doopenfold = 1 |
            \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
            \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
            \        let b:doopenfold = 2 |
            \     endif |
            \     exe JumpCursorOnEdit_foo |
            \   endif |
            \ endif
   " Need to postpone using "zv" until after reading the modelines.
   autocmd BufWinEnter *
            \ if exists("b:doopenfold") |
            \   exe "normal zv" |
            \   if(b:doopenfold > 1) |
            \       exe  "+".1 |
            \   endif |
            \   unlet b:doopenfold |
            \ endif
augroup END

"}}}
