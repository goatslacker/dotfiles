" Vim syntax file
" Language:     consoleux
" Maintainer:   Josh Perez <josh@goatslacker.com>
" Last Change:  July 4th, 2011
" Version:      0.0.1
"

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'consoleux'
endif

syntax sync fromstart

"" Comments
syntax keyword  consoleUXCommentTodo    TODO FIXME XXX TBD contained
syntax region   consoleUXLineComment    start=+\/\/+ end=+$+ keepend contains=consoleUXCommentTodo,@Spell

syntax case match

"" Syntax
syntax match    consoleUXEquals       /=/
syntax match    consoleUXWhitespace   / /

syntax match    consoleUXNumber       /\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/
syntax match    consoleUXFunctionA    /\w\+(/
syntax match    consoleUXFunctionB    /)/
syntax region   consoleUXVariable     start=+#{+  end=+}+
syntax region   consoleUXString       start=+\w\+(+ end=+)+ contains=consoleUXFunctionA,consoleUXFunctionB,consoleUXLineComment,consoleUXVariable

"" Reserved words

syntax keyword consoleUXColors        aliceblue antiquewhite aqua aquamarine azure beige black blue blueviolet brightblue brightcyan brightgreen brightpurple brightyellow brown burlywood cadetblue chartreuse chocolate coral cornflowerblue crimson cyan darkblue darkcyan darkgoldenrod darkgray darkgreen darkkhaki darkmagenta darkolivegreen darkorange darkorchid darkred darkseagreen darkslateblue darkslategray darkturquoise darkviolet deeppink deepskyblue dimgray dodgerblue firebrick forestgreen fuchsia gainsboro ghostwhite gold goldenrod gray green greenyellow honeydew hotpink indianred indigo ivory khaki lavender lavenderblush lawngreen lemonchiffon lightblue lightcoral lightcyan lightgoldenrodyellow lightgreen lightpink lightseagreen lightskyblue lightslategray lightsteelblue lightyellow lime limegreen linen magenta maroon mediumaquamarine mediumblue mediumorchid mediumpurple mediumseagreen mediumslateblue mediumspringgreen mediumturqoise mediumvioletred midnightblue mintcream mistyrose navajowhite navy oldlace olive olivedrab orange orangered orchid palegoldenrod palegreen paleturqoise palevioletred peachpuff peru pink plum powderblue purple red rosybrown royalblue saddlebrown salmon sandybrown seagreen sienna silver skyblue slateblue slategray snow springgreen steelblue tan teal thistle tomato turqoise violet wheat white whitesmoke yellow yellowgreen
syntax keyword consoleUXModifiers     bold italic underline blink
syntax keyword consoleUXSwitches      background

"" Errors
"syntax region consoleUXError start=+=+ end=+$+ contains=consoleUXColors,consoleUXModifiers,consoleUXSwitches,consoleUXNumber,consoleUXEquals,consoleUXWhitespace,consoleUXString

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ux_syn_inits")
  if version < 508
    let did_ux_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink  consoleUXLineComment          Comment
  HiLink  consoleUXCommentTodo          Todo
  HiLink  consoleUXNumber               Number
  HiLink  consoleUXFunctionA            Function
  HiLink  consoleUXFunctionB            Function
  HiLink  consoleUXString               Normal
  HiLink  consoleUXVariable             String
  HiLink  consoleUXColors               Character
  HiLink  consoleUXModifiers            Keyword
  HiLink  consoleUXSwitches             Operator
  HiLink  consoleUXError                Error

  delcommand HiLink
endif

let b:current_syntax = "consoleux"
if main_syntax == 'consoleux'
  unlet main_syntax
endif
