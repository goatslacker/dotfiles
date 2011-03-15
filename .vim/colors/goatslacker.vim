" Vim color file -- goatslacker
" Maintainer:   Josh Perez <josh@goatslacker.com>
" Last Change:  2011 Feb 15

set background=dark
highlight clear
let g:colors_name = "goatslacker"

" Colors: {
hi Blue     ctermfg=68          ctermbg=NONE        cterm=NONE
hi White    ctermfg=255         ctermbg=NONE        cterm=NONE
hi Black    ctermfg=235         ctermbg=NONE        cterm=NONE
hi Green    ctermfg=107         ctermbg=NONE        cterm=NONE
hi Red      ctermfg=203         ctermbg=NONE        cterm=NONE
hi Pink     ctermfg=205         ctermbg=NONE        cterm=NONE
hi Orange   ctermfg=214         ctermbg=NONE        cterm=NONE
hi Peach    ctermfg=222         ctermbg=NONE        cterm=NONE
hi Purple   ctermfg=153         ctermbg=NONE        cterm=NONE
" }

" SyntaxHighlighting: {
hi Normal         ctermfg=255         ctermbg=NONE        cterm=NONE
hi Comment        ctermfg=235         ctermbg=NONE        cterm=NONE
hi Constant       ctermfg=68          ctermbg=NONE        cterm=NONE
hi String         ctermfg=107         ctermbg=NONE        cterm=NONE
hi Character      ctermfg=68          ctermbg=NONE        cterm=NONE
hi Number         ctermfg=203         ctermbg=NONE        cterm=NONE
hi Boolean        ctermfg=203         ctermbg=NONE        cterm=NONE
hi Float          ctermfg=203         ctermbg=NONE        cterm=NONE
hi Identifier     ctermfg=68          ctermbg=NONE        cterm=NONE
hi Function       ctermfg=205         ctermbg=NONE        cterm=NONE
hi Statement      ctermfg=214         ctermbg=NONE        cterm=NONE
hi Conditional    ctermfg=222         ctermbg=NONE        cterm=NONE
hi Repeat         ctermfg=222         ctermbg=NONE        cterm=NONE
hi Label          ctermfg=222         ctermbg=NONE        cterm=NONE
hi Operator       ctermfg=215         ctermbg=NONE        cterm=NONE
hi Keyword        ctermfg=222         ctermbg=NONE        cterm=NONE
hi Exception      ctermfg=203         ctermbg=NONE        cterm=NONE
hi PreProc        ctermfg=222         ctermbg=NONE        cterm=NONE
hi Include        ctermfg=153         ctermbg=NONE        cterm=NONE
hi Define         ctermfg=222         ctermbg=NONE        cterm=NONE
hi Macro          ctermfg=153         ctermbg=NONE        cterm=NONE
hi PreCondit      ctermfg=153         ctermbg=NONE        cterm=NONE
hi Type           ctermfg=214         ctermbg=NONE        cterm=NONE
hi StorageClass   ctermfg=255         ctermbg=NONE        cterm=NONE
hi Structure      ctermfg=222         ctermbg=NONE        cterm=NONE
hi Typedef        ctermfg=164         ctermbg=NONE        cterm=NONE
hi Special        ctermfg=211         ctermbg=NONE        cterm=NONE
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
hi link javaScriptSpecial               Pink
hi link javaScriptFloat                 Red
hi link javaScriptBrowserObjects        Orange
hi link javaScriptDOMObjects            Orange
hi link javaScriptDOMProperties         Purple
hi link javaScriptDOMMethods            Pink
hi link javaScriptAjaxObjects           Orange
hi link javaScriptAjaxProperties        Purple
hi link javaScriptAjaxMethods           Pink
hi link javaScriptPropietaryObjects     Orange
hi link javaScriptPropietaryMethods     Pink
hi link javaScriptHtmlElemProperties    Purple
hi link javaScriptEventListenerKeywords Pink
hi link javaScriptSource          Purple
hi link javaScriptType            Orange
hi link javaScriptOperator        Orange
hi link javaScriptBoolean         Red
hi link javaScriptNull            Blue
hi link javaScriptConditional     Peach
hi link javaScriptRepeat          Peach
hi link javaScriptBranch          Orange
hi link javaScriptStatement       Red
hi link javaScriptGlobalObjects   Orange
hi link javaScriptExceptions      Red
hi link javaScriptFutureKeys      Blue
hi link javaScriptHtmlEvents      Pink
"  }

" PHP: {
hi link phpFunctions          Pink
" }

" HTML: {
hi link htmlTag               Blue
hi link htmlTagName           Blue
"}

" Python: {
hi link pythonPreCondit       Blue
" }

" CSS_LESS: {
hi link lessVariable      Blue
hi link lessFunction      Purple
hi link lessFuncDef       Purple
hi link cssBraces         Peach
hi link cssTagName        Orange
hi link cssClassName      Peach
hi link cssCommonAttr     Pink
hi link cssFontAttr       Pink
hi link cssTextAttr       Pink
hi link cssBoxAttr        Pink
hi link cssColorAttr      Pink
hi link cssRenderAttr     Pink
hi link cssTableAttr      Pink
hi link cssAuralAttr      Pink
hi link cssUIAttr         Pink
hi link cssGeneratedContentAttr      Pink
"}
