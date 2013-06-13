export PATH="$HOME/bin:$PATH"

which keychain &>/dev/null
if [ $? -eq 0 ]; then
    eval `keychain -q --eval id_rsa`
fi

which brew &>/dev/null
if [ $? -eq 0 ]; then
    [[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

[[ -f /usr/local/etc/bash_completion.d/git-completion.bash ]] && . /usr/local/etc/bash_completion.d/git-completion.bash
[[ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]] && . /usr/local/etc/bash_completion.d/git-prompt.sh

if [ ! -z "$PS1" ]; then
    _jobcount() { test $1 -gt 0 && echo [$1] ; }
    export PS1='\W$(__git_ps1 "(%s)")$(_jobcount \j)\$ '
fi

export LESS=-SFX

export GIT_PAGER='less -R'
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWDIRTYSTATE=1

export EDITOR=vim

# history
export HISTCONTROL=erasedups:ignoreboth
export HISTIGNORE="pwsafe *:ls:*git push*"
export HISTSIZE=10000
shopt -s histappend cmdhist

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
