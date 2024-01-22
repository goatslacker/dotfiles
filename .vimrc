set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion' " Moving within vim \\w
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale' " ALE for linting/prettier integration
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab' " <3
Plug 'goatslacker/mango.vim' " Syntax colors
Plug 'itchyny/lightline.vim' " Statusline
Plug 'jlanzarotta/bufexplorer' " \be to open buffers
Plug 'jremmen/vim-ripgrep' " :Rg <pattern>
Plug 'rhysd/committia.vim' " Nice commit editing experience
Plug 'sickill/vim-pasta' " Fixes for paste+indent
Plug 'spolu/dwm.vim' " Window management: C-N, C-J/K, C-Space
Plug 'tomtom/tcomment_vim' " gcc / visual: gc
Plug 'tpope/vim-fugitive' " Git utils
Plug 'wincent/ferret' " Find & Replace :Acks /{pattern}/{replacement}/

" Languages
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'ericpruitt/tmux.vim'
Plug 'vim-python/python-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'toyamarinyon/vim-swift'
Plug 'udalov/kotlin-vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" > General
""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting
syntax on
set t_Co=256
let base16colorspace=256
set background=dark
color mango
" history
set history=900
" Turns backup off
set nobackup
set nowb

set shell=/bin/sh

filetype plugin on
filetype indent plugin on

"""
" > Getting rid of my bad habits
"""
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""" Move a single row down/up for wrapped lines
:nmap j gj
:nmap k gk

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
set pastetoggle=<F2>
" Searching
set incsearch
set hlsearch
" sets the cursor line to be highlighted
set cursorline
" Do not tell me if I'm in insert or visual mode
set noshowmode
" in Visual Mode show how many lines I'm selecting
"set showcmd
" Color column at 80
set colorcolumn=80
set laststatus=2
" No error sounds/visual
set noerrorbells
set novisualbell
" Backspace config
set backspace=eol,start,indent
" Relative line number
set rnu

""""""""""""""""""""""""""""""""""""""""""""""""""""
" > Keyboard Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Executes the current file
nmap <Leader>p :call <SID>R()<CR>
" File Explorer
nmap <Leader>t :Explore<CR>
" Clear search highlight
nmap <Leader>c :nohlsearch<CR>
" fzf
nmap <Leader>f :FZF<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Use tabs for Makefile
autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab

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

" Function that runs scripts while still editing file
" supports JavaScript & Python
function! <SID>R() "{{{
  if &filetype == 'javascript'
    execute "!node %"
  elseif &filetype == 'python'
    execute "!python %"
  endif
endfunction "}}}

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:slime_target = "tmux"

" https://github.com/zeit/hyper/issues/1037#issuecomment-269848444
set t_RV=

" ALE

let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '✖'

let g:ale_completion_tsserver_autoimport = 1

let g:ale_linters = {
      \'html': [],
      \'javascript': ['eslint'],
      \'python': ['ruff', 'pyright'],
      \'typescript': ['eslint', 'tsserver', 'typecheck'],
      \'typescriptreact': ['eslint', 'tsserver', 'typecheck'],
      \}

let g:ale_fixers = {
      \'css': ['prettier'],
      \'html': ['prettier'],
      \'javascript': ['prettier'],
      \'json': ['prettier'],
      \'markdown': ['prettier'],
      \'python': ['ruff', 'ruff_format'],
      \'typescript': ['prettier'],
      \'typescriptreact': ['prettier'],
      \}

let g:ale_pattern_options = {
      \'\.min.js$': { 'ale_enabled': 0 },
      \'\.min.css$': { 'ale_enabled': 0 },
      \}

nnoremap <Leader>af :ALEFix<CR>
nnoremap <Leader>at :ALEToggle<CR>
nnoremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <Leader>am :messages<CR>
nnoremap <silent> <Left> :ALEPrevious<CR>
nnoremap <silent> <Right> :ALENext<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_working_path_mode = 'ra'
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
endif
let g:ctrlp_use_caching=0

let g:python_highlight_all = 1

let g:vim_markdown_folding_disabled = 1
