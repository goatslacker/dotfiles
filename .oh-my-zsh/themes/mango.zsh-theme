# -----------------------------------------------------------------------------
#          FILE: mango.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file
#        AUTHOR: Josh Perez <josh@goatslacker.com>
#       VERSION: 0.2
# -----------------------------------------------------------------------------

eval bgred='$BG[124]'
eval fgred='$FG[124]'
eval fgblack='$FG[235]'
eval bgblack='$BG[235]'

git_branch() {
  INDEX=$(git branch 2> /dev/null | grep \* | sed -e 's/\* //')
  if $(echo -n "$INDEX" | grep '\w' &> /dev/null); then
    echo "$fgblack%{$reset_color%}$bgblack  $INDEX"
  fi
}

PROMPT='$bgred%n%{$reset_color%}$bgblack$fgred%{$reset_color%}$bgblack ${PWD/#$HOME/~}%{$reset_color%}$fgblack%{$reset_color%}
λ '

RPROMPT='$(git_branch)%{$reset_color%}'
