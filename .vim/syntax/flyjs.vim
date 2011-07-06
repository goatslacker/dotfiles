" Vim syntax file
" Language:     fly
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
  let main_syntax = 'fly'
endif

syntax sync fromstart

"" Comments
syntax keyword  flyCommentTodo    TODO FIXME XXX TBD contained
syntax region   flyLineComment    start=+\/\/+ end=+$+ keepend contains=flyCommentTodo,@Spell

syntax case match

"" Syntax
syntax match    flyEquals       /=/
syntax match    flyWhitespace   / /

syntax match    flyNumber       /\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/
syntax match    flyFunctionA    /\w\+(/
syntax match    flyFunctionB    /)/
syntax region   flyVariable     start=+#{+  end=+}+
syntax region   flyString       start=+\w\+(+ end=+)+ contains=flyFunctionA,flyFunctionB,flyLineComment,flyVariable

"" Reserved words

syntax keyword flyColors        aliceblue antiquewhite aqua aquamarine azure beige black blue blueviolet brightblue brightcyan brightgreen brightpurple brightyellow brown burlywood cadetblue chartreuse chocolate coral cornflowerblue crimson cyan darkblue darkcyan darkgoldenrod darkgray darkgreen darkkhaki darkmagenta darkolivegreen darkorange darkorchid darkred darkseagreen darkslateblue darkslategray darkturquoise darkviolet deeppink deepskyblue dimgray dodgerblue firebrick forestgreen fuchsia gainsboro ghostwhite gold goldenrod gray green greenyellow honeydew hotpink indianred indigo ivory khaki lavender lavenderblush lawngreen lemonchiffon lightblue lightcoral lightcyan lightgoldenrodyellow lightgreen lightpink lightseagreen lightskyblue lightslategray lightsteelblue lightyellow lime limegreen linen magenta maroon mediumaquamarine mediumblue mediumorchid mediumpurple mediumseagreen mediumslateblue mediumspringgreen mediumturqoise mediumvioletred midnightblue mintcream mistyrose navajowhite navy oldlace olive olivedrab orange orangered orchid palegoldenrod palegreen paleturqoise palevioletred peachpuff peru pink plum powderblue purple red rosybrown royalblue saddlebrown salmon sandybrown seagreen sienna silver skyblue slateblue slategray snow springgreen steelblue tan teal thistle tomato turqoise violet wheat white whitesmoke yellow yellowgreen
syntax keyword flyModifiers     bold italic underline blink
syntax keyword flySwitches      background

"" Errors
"syntax region flyError start=+=+ end=+$+ contains=flyColors,flyModifiers,flySwitches,flyNumber,flyEquals,flyWhitespace,flyString

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

  HiLink  flyLineComment          Comment
  HiLink  flyCommentTodo          Todo
  HiLink  flyNumber               Number
  HiLink  flyFunctionA            Function
  HiLink  flyFunctionB            Function
  HiLink  flyString               Normal
  HiLink  flyVariable             String
  HiLink  flyColors               Character
  HiLink  flyModifiers            Keyword
  HiLink  flySwitches             Operator
  HiLink  flyError                Error

  delcommand HiLink
endif

let b:current_syntax = "fly"
if main_syntax == 'fly'
  unlet main_syntax
endif
