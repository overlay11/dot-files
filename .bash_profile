PS1='\[\e[33m\]\u@\h\[\e[39m\] $? '
PS1+='\[\e[34m\e[1m\]\W\[\e[39m\e[22m\] \$\[\e[0m\a\e]2;\e\\\] '
export PS1

export CLICOLOR=1
export EDITOR=vim
export PAGER=less
export LESS='WRj3iPs?f%f  .%lt-%lb?L/%L.?Pb (%Pb\%).'
export LYNX_CFG=~/.lynx.cfg

alias ls='ls -Fh'
alias ll='ls -l'
alias la='ll -A'
alias df='df -h'
alias T='tree --du -Fh'
alias Ta='T -aI .git'
alias vi=vim
alias M=less
alias bc='bc -l'

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
alias ytdl='yt-dlp'
alias syncthing='syncthing -no-browser'

F() {
    find . -iname "*$1*" \( -type d -exec echo {}/ \; -or -print \) \
        | ggrep -iF --color=always "$1" | $PAGER
}

grp() {
    ggrep -nRIE --color=always --exclude-dir=.git "$@" | $PAGER
}

gglr() {
    googler -x -l en --colorize always --np "$@" | $PAGER
}

ytdl-pl() {
    ytdl -o '%(playlist_title)s/%(playlist_index)s. %(title)s.%(ext)s' \
        --yes-playlist "$@"
}

bind '"\eOR":" git status -s\n"' # F3
bind '"\eOS":" cd ..\n"' # F4
bind '"\e[19~":" clear\n"' # F8

export HISTCONTROL=ignoreboth:erasedups
