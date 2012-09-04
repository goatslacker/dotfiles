if exists("b:current_syntax")
  finish
endif

if version < 600
  syn clear
endif

" Highlight long strings.
syn sync minlines=81

" Allow dollar signs in identifiers.
setlocal isident+=$

syn match memoryConditional /\<\%(if\|else\|then\)\>/
hi def link memoryConditional Conditional

syn match memoryKeyword /\<\%(construct\|and\|or\|not\|is\|isnt\|export\|import\)\>/
hi def link memoryKeyword Keyword

syn match memoryObject /\<\%(object\|clone\|clones\|prototype\)\>/
hi def link memoryObject Constant

syn match memoryBoolean /\<\%(true\|false\)\>/
hi def link memoryBoolean Boolean

syn match memoryException /\<\%(try\|catch\|raise\)\>/
hi def link memoryException Exception

syn match memoryGlobal /\<\%(none\)\>/
hi def link memoryGlobal Type

" A special variable
syn match memorySpecialVar /\<\%(undefined\|this\)\>/
hi def link memorySpecialVar Type

" Regular strings
syn region memoryString start=/'/ skip=/\\\\\|\\'/ end=/'/
hi def link memoryString String

" A integer, including a leading plus or minus
syn match memoryNumber /\i\@<!\d\+\%([eE]\d\+\)\?/
hi def link memoryNumber Number

" A floating-point number, including a leading plus or minus
syn match memoryFloat /\i\@<!\d*\.\@<!\.\d\+\%([eE]\d\+\)\?/
hi def link memoryFloat Float

syn match memoryOperator /++\|+:\|!!\|=>\|<+/
hi def link memoryOperator Operator

syn match memoryFunction /->/
hi def link memoryFunction Function

syn match memoryFunctionCall /[a-zA-Z_$][0-9a-zA-Z_\-$]*:/
hi def link memoryFunctionCall Macro

syn keyword memoryTodo TODO FIXME XXX contained
hi def link memoryTodo Todo

syn match memoryComment /#.*/ contains=@Spell,memoryTodo
hi def link memoryComment Comment

syn region memoryRegex start=/\%(\%()\|\i\@<!\d\)\s*\|\i\)\@<!\/\s\@!/
\                      skip=/\[[^\]]\{-}\/[^\]]\{-}\]/
\                      end=/\/[gimy]\{,4}\d\@!/
hi def link memoryRegex String

" An error for trailing whitespace, as long as the line isn't just whitespace
if !exists("memory_no_trailing_space_error")
  syn match memorySpaceError /\S\@<=\s\+$/ display
  hi def link memorySpaceError Error
endif

let b:current_syntax = "memory"
