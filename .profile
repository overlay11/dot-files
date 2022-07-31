export CLICOLOR=1
export EDITOR=vim
export PAGER=less

export HISTSIZE=1000

if [ "$BASH" ]; then
    export PS1='\[[91m[1m\]\u@\h \[[34m\]\W \[[m\]\$ '
    export HISTCONTROL=ignoreboth:erasedups
    . "$HOME/.shrc"
else
    export PS1='\$ '
    export ENV="$HOME/.shrc"
fi
