export PS1='\[\e[33m\]\u@\h \[\e[34m\e[1m\]\W \[\e[0m\]\$ '
export CLICOLOR=1

export EDITOR=vim
export PAGER=less
export LESS='WRj3i'

alias ls='ls -Fh'
alias ll='ls -l'
alias la='ll -A'
alias df='df -h'
alias vi=vim

alias Ga='git add'
alias Gd='git diff'
alias Gdc='Gd --cached'
alias Gc='git commit'
alias Gca='Gc --amend'
alias Gb='git branch'
alias GC='git checkout'
alias Gl='git log --oneline --graph'

alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'

bind '"\eOR":" git status -s\n"' # F3
bind '"\eOS":" cd ..\n"' # F4

export HISTCONTROL=ignoreboth:erasedups
