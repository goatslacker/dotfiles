" Vim color file -- goatslacker
" Maintainer:   Josh Perez <josh@goatslacker.com>
" Last Change:  2011 Feb 15

set background=dark
highlight clear
let g:colors_name = "goatslacker"

" SyntaxHighlighting: {

hi Normal         ctermfg=255         ctermbg=NONE        cterm=NONE

hi Comment        ctermfg=235         ctermbg=NONE        cterm=NONE

hi Constant       ctermfg=68          ctermbg=NONE        cterm=NONE
"
hi String         ctermfg=107         ctermbg=NONE        cterm=NONE
hi Character      ctermfg=68          ctermbg=NONE        cterm=NONE
hi Number         ctermfg=203         ctermbg=NONE        cterm=NONE
hi Boolean        ctermfg=203         ctermbg=NONE        cterm=NONE
hi Float          ctermfg=203         ctermbg=NONE        cterm=NONE

hi Identifier     ctermfg=68          ctermbg=NONE        cterm=NONE
"
hi Function       ctermfg=245         ctermbg=NONE        cterm=NONE

hi Statement      ctermfg=214         ctermbg=NONE        cterm=NONE
"
hi Conditional    ctermfg=222         ctermbg=NONE        cterm=NONE
hi Repeat         ctermfg=222         ctermbg=NONE        cterm=NONE
hi Label          ctermfg=222         ctermbg=NONE        cterm=NONE
hi Operator       ctermfg=215         ctermbg=NONE        cterm=NONE
hi Keyword        ctermfg=222         ctermbg=NONE        cterm=NONE
hi Exception      ctermfg=203         ctermbg=NONE        cterm=NONE

hi PreProc        ctermfg=222         ctermbg=NONE        cterm=NONE
"
hi Include        ctermfg=146         ctermbg=NONE        cterm=NONE
hi Define         ctermfg=222         ctermbg=NONE        cterm=NONE
hi Macro          ctermfg=146         ctermbg=NONE        cterm=NONE
hi PreCondit      ctermfg=146         ctermbg=NONE        cterm=NONE

hi Type           ctermfg=214         ctermbg=NONE        cterm=NONE
"
hi StorageClass   ctermfg=255         ctermbg=NONE        cterm=NONE
hi Structure      ctermfg=222         ctermbg=NONE        cterm=NONE
hi Typedef        ctermfg=164         ctermbg=NONE        cterm=NONE

hi Special        ctermfg=211         ctermbg=NONE        cterm=NONE
"
hi SpecialChar    ctermfg=211         ctermbg=NONE        cterm=NONE
hi Tag            ctermfg=68          ctermbg=NONE        cterm=NONE
hi Delimiter      ctermfg=255         ctermbg=NONE        cterm=NONE
hi SpecialComment ctermfg=68          ctermbg=NONE        cterm=NONE
hi Debug          ctermfg=68          ctermbg=NONE        cterm=NONE

hi Underlined     ctermfg=NONE        ctermbg=NONE        cterm=underline

hi Ignore         ctermfg=68          ctermbg=NONE        cterm=NONE

hi Error          ctermfg=255         ctermbg=196         cterm=NONE

hi Todo           ctermfg=232         ctermbg=220         cterm=NONE

" }

" JavaScript: {
hi javaScriptFunction       ctermfg=222         ctermbg=NONE        cterm=NONE
hi javaScriptFuncName       ctermfg=222         ctermbg=NONE        cterm=NONE
hi javaScriptNumber         ctermfg=203         ctermbg=NONE        cterm=NONE
hi javaScriptLabel          ctermfg=222         ctermbg=NONE        cterm=NONE
hi javaScriptRegexpString   ctermfg=203         ctermbg=NONE        cterm=NONE
hi javaScriptPrototype      ctermfg=68          ctermbg=NONE        cterm=NONE
" }

" PHP: {
hi phpFunctions             ctermfg=211         ctermbg=NONE        cterm=NONE
" hi phpIntVar                ctermfg=47          ctermbg=143         cterm=NONE
" hi phpEnvVar                ctermfg=47          ctermbg=143         cterm=NONE
" }

" HTML: {
hi htmlTag                  ctermfg=68          ctermbg=NONE        cterm=NONE
hi htmlTagName              ctermfg=68          ctermbg=NONE        cterm=NONE
" hi htmlPreAttr              ctermfg=222         ctermbg=NONE          cterm=NONE
" hi htmlPreProcAttrName      ctermfg=222         ctermbg=NONE          cterm=NONE
" hi htmlPreProcAttrError     ctermfg=222         ctermbg=NONE          cterm=NONE
" hi htmlValue                ctermfg=222         ctermbg=NONE          cterm=NONE
" hi htmlStatement            ctermfg=222         ctermbg=NONE          cterm=NONE
" hi htmlSpecial              ctermfg=222         ctermbg=NONE          cterm=NONE
"}

" Python: {
hi pythonPreCondit      ctermfg=68          ctermbg=NONE        cterm=NONE
" }
