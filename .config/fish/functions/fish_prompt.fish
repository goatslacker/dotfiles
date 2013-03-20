function fish_prompt
  # user
  set_color -b 24a4ee
  set_color 252525
  printf '%s' (whoami)

  set_color -b 252525
  set_color 24a4ee
  printf ' '

  # pwd
  set_color BABABA
  printf '%s' (echo $PWD | sed -e "s|^$HOME|~|")

  set_color normal

  # determine git branch
  set -l branch (command git branch 2> /dev/null | grep \* | sed -e 's/\* //')

  if test $branch
    set_color -b 8b8b8b
    set_color 252525

    printf ' '

    # set_color 4c791e
    printf ' '

    set_color 252525
    printf $branch

    set_color normal

    set_color 8b8b8b
    printf ''
  else
    set_color 252525
    printf ''
  end

  set_color normal

  # function prompt
  echo
  printf 'λ '
  set_color normal
end
