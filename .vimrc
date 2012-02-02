set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""
" > General
""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting
syntax on
set t_Co=256
set background=light
color mango
" history
set history=900
" Turns backup off
set nobackup
set nowb


""""""""""""""""""""""""""""""""""""""""""""""""""""
" > Text
""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2 space indent
set softtabstop=2
set shiftwidth=2
set tabstop=2
" Spaces are better than tabs
set expandtab
" auto indent options
set autoindent
set smartindent
" wrap lines
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""
" > UI
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show 7 lines on the screen
set so=7
" wildmenu for tab completion
set wildmenu
" encoding
set encoding=utf8
set ffs=unix
" Paste toggle so formatting is not lost on paste
set pastetoggle=<Leader>a
" Searching
set incsearch
" sets the cursor line to be highlighted
set cursorline
" Do not tell me if I'm in insert or visual mode
set noshowmode
" in Visual Mode show how many lines I'm selecting
"set showcmd
" Set the cmdheight to zero (only works with Josh's compiled version of vim)
if exists("v:goatslacker")
  set cmdheight=0
endif
" for vim-powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'
" No error sounds/visual
set noerrorbells
set novisualbell
" Backspace config
set backspace=eol,start,indent

""""""""""""""""""""""""""""""""""""""""""""""""""""
" > Keyboard Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
map <leader>w :w!<CR>
" Run Makefile
map <Leader>b :w !make<CR>
" JSHint file
map <Leader>l :call <SID>lint()<CR>
" Toggle Numbers On | Off
map <Leader>n :set number!<CR>
" Executes the current file
map <Leader>p :call <SID>R()<CR>
" NERDTree
map <Leader>t :NERDTreeToggle<CR>
" Editing .vimrc
map <Leader>e :e! ~/.vimrc<CR>
" Ctrl-F for grep
map <c-f> :call FindPattern()<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

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


" Lets me know how much time I've spent editing a file
" Keyboard shortcut -> \dt
augroup TimeSpentEditing
au!
au BufWinEnter * if !exists('b:tstart')|let b:tstart=reltime()|en
augroup END

function! TimeSpentEditing()
  let secs = str2nr(reltimestr(reltime(b:tstart)))
  let hours = secs / 3600
  let minutes = (secs - hours * 3600) / 60
  let seconds = secs - hours * 3600 - minutes * 60
  return printf("%d:%02d:%02d", hours, minutes, seconds)
endfunction

com! TimeSpentEditing echo TimeSpentEditing()
map <silent> <leader>dt :TimeSpentEditing<CR>


" Function to find in current directory
function! FindPattern()
  call inputsave()
  let name = input('find: ')
  call inputrestore()
  execute "vimgrep /" . expand(name) . "/j **"
  execute ":cw"
endfunction


" JSHINT syntax checker
function! <SID>lint() "{{{
  let filename = expand("%")
  execute ":w !jshint " . filename . " --config ~/.jshintrc"
endfunction "}}}


" Function that runs scripts while still editing file
" supports JavaScript & Python
function! <SID>R() "{{{
  let filename = expand("%")

  if &filetype == 'javascript'
    execute ":w !node " . filename
  elseif &filetype == 'python'
    execute ":w !python " . filename
  endif
endfunction "}}}


