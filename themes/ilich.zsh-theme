if [[ -z $(who am i) ]]; then
    PROMPT_HOST=''
else
    PROMPT_HOST='%{$fg_bold[yellow]%}<%{$fg_bold[cyan]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[magenta]%}%m%{$fg_bold[yellow]%}>'
fi

PROMPT=$PROMPT_HOST'%{%(?.$fg_bold[cyan]☁.$fg_bold[red]☢)%} %{$fg_bold[green]%}%p %{$fg[green]%}%3~ %{$fg_bold[cyan]%}$JAVA_VERSION_SHORT_NAME$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
