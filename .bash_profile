export PATH="$HOME/bin:$PATH"

eval `keychain -q --eval id_rsa`

[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/git-prompt.sh

if [ ! -z "$PS1" ]; then
    export PS1='\W$(__git_ps1 "(%s)")\$ '
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
export HISTIGNORE="pwsafe *:ls"
export HISTSIZE=10000
shopt -s histappend cmdhist

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi