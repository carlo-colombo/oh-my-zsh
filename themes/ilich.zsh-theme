green=083
yellow=221

if [[ -z $SSH_CONNECTION ]]; then
    PROMPT_HOST=''
else
    PROMPT_HOST='%{$fg_bold[yellow]%}<%{$fg_bold[cyan]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[magenta]%}%m%{$fg_bold[yellow]%}>
'
fi

PROMPT_JAVA_VERSION_SHORT_NAME=' %{$fg_bold[cyan]%}$JAVA_VERSION_SHORT_NAME'

PROMPT=$PROMPT_HOST'%{%{$fg_bold[green]%}%p%{$fg[green]%}%3~ %{$fg_bold[cyan]%}$JAVA_VERSION_SHORT_NAME$(virtualenv_info)$(gvm_info)$(git_prompt_info)%{$fg_bold[blue]%} % 
%(?.$FG[$green].$fg_bold[red])%}%(?.☁.☢) ❯ %{$reset_color%} '

function brackets {
  echo "%{$fg[green]%}[%{$fg[$2]%}$1%{$fg[green]%}]"
}

function virtualenv_info {
  [ $VIRTUAL_ENV ] && brackets $(basename $VIRTUAL_ENV) red
}

function gvm_info {
	test -d grails-app && type __gvmtool_current > /dev/null && brackets "grails-$(__gvmtool_current grails | cut -d' ' -f4)" yellow
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$FG[$yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
