alias ls='ls -Fh'
alias ll='ls -l'
alias la='ll -A'
alias df='df -h'
alias T='tree --du -Fh'
alias Ta='T -aI .git'
alias vi=vim
alias M=less
alias bc='bc -l'

alias G=git
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
alias ffplay='ffplay -hide_banner'
alias ytdl='yt-dlp'
alias ytdl-old='youtube-dl'
alias mpv-360='mpv --ytdl-format="(bv+ba/b)[height<=?360]"'
alias mpv-480='mpv --ytdl-format="(bv+ba/b)[height<=?480]"'
alias syncthing='syncthing -no-browser'
alias rmmeta='exiftool -All= -overwrite_original'

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

ytdl-portion() {
    local ffmpeg_args="$1"; shift
    ytdl --downloader ffmpeg --downloader-args ffmpeg_i:"$ffmpeg_args" "$@"
}

ytdl-bootleg() {
    ytdl-pl -f '(ba/b)[asr=?44100]' -x --remux-video mka --no-embed-subs \
        --no-mtime "$@"
}

bind '"\eOR":" git status -s\n"' # F3
bind '"\eOS":" cd ..\n"' # F4
bind '"\e[19~":" clear\n"' # F8

[ -e ~/.bashrc.local ] && . ~/.bashrc.local
