" Vim syntax file
" Language:     dash
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
  let main_syntax = 'dash'
endif

syntax sync fromstart

"" Comments
syntax keyword  dashCommentTodo    TODO FIXME XXX TBD contained
syntax region   dashLineComment    start=+\/\/+ end=+$+ keepend contains=dashCommentTodo,@Spell

syntax case match

"" Syntax
syntax match    dashEquals       /=/
syntax match    dashWhitespace   / /

syntax match    dashNumber       /\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/
syntax match    dashFunctionA    /\w\+(/
syntax match    dashFunctionB    /)/
syntax region   dashVariable     start=+#{+  end=+}+
syntax region   dashString       start=+\w\+(+ end=+)+ contains=dashFunctionA,dashFunctionB,dashLineComment,dashVariable

"" Reserved words

syntax keyword dashColors        aliceblue antiquewhite aqua aquamarine azure beige black blue blueviolet brightblue brightcyan brightgreen brightpurple brightyellow brown burlywood cadetblue chartreuse chocolate coral cornflowerblue crimson cyan darkblue darkcyan darkgoldenrod darkgray darkgreen darkkhaki darkmagenta darkolivegreen darkorange darkorchid darkred darkseagreen darkslateblue darkslategray darkturquoise darkviolet deeppink deepskyblue dimgray dodgerblue firebrick forestgreen fuchsia gainsboro ghostwhite gold goldenrod gray green greenyellow honeydew hotpink indianred indigo ivory khaki lavender lavenderblush lawngreen lemonchiffon lightblue lightcoral lightcyan lightgoldenrodyellow lightgreen lightpink lightseagreen lightskyblue lightslategray lightsteelblue lightyellow lime limegreen linen magenta maroon mediumaquamarine mediumblue mediumorchid mediumpurple mediumseagreen mediumslateblue mediumspringgreen mediumturqoise mediumvioletred midnightblue mintcream mistyrose navajowhite navy oldlace olive olivedrab orange orangered orchid palegoldenrod palegreen paleturqoise palevioletred peachpuff peru pink plum powderblue purple red rosybrown royalblue saddlebrown salmon sandybrown seagreen sienna silver skyblue slateblue slategray snow springgreen steelblue tan teal thistle tomato turqoise violet wheat white whitesmoke yellow yellowgreen
syntax keyword dashModifiers     bold italic underline blink
syntax keyword dashSwitches      background

"" Errors
"syntax region dashError start=+=+ end=+$+ contains=dashColors,dashModifiers,dashSwitches,dashNumber,dashEquals,dashWhitespace,dashString

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

  HiLink  dashLineComment          Comment
  HiLink  dashCommentTodo          Todo
  HiLink  dashNumber               Number
  HiLink  dashFunctionA            Function
  HiLink  dashFunctionB            Function
  HiLink  dashString               Normal
  HiLink  dashVariable             String
  HiLink  dashColors               Character
  HiLink  dashModifiers            Keyword
  HiLink  dashSwitches             Operator
  HiLink  dashError                Error

  delcommand HiLink
endif

let b:current_syntax = "dash"
if main_syntax == 'dash'
  unlet main_syntax
endif
