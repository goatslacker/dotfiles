# -----------------------------------------------------------------------------
#          FILE: mango.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file, based on zmt
#        AUTHOR: Josh Perez <josh@goatslacker.com>
#       VERSION: 0.1
#    SCREENSHOT: coming soon
# -----------------------------------------------------------------------------

# MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}⑂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg_bold[yellow]%}⑂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}⑂%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✧"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

PROMPT='%{$fg[red]%}冷静%{$reset_color%} %{$fg[magenta]%}%n%{$reset_color%} in %{$fg[magenta]%}${PWD/#$HOME/~}%{$reset_color%}
%! λ '

RPROMPT='$(git_prompt_short_sha)$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
