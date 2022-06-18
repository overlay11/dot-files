alias pd=pushd
alias ls='ls -Fh'
alias ll='ls -l'
alias la='ll -A'
alias df='df -h'
alias T='tree --du -Fh'
alias Ta='T -aI .git'
alias vi=vim
alias M="$PAGER"
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

alias grep='grep --color'
alias ggrep='ggrep --color'
alias mutt-yandex='mutt -F ~/.mutt/yandex/muttrc'
alias mutt-yahoo='mutt -F ~/.mutt/yahoo/muttrc'
alias mutt-hotmail='mutt -F ~/.mutt/hotmail/muttrc'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
alias ffplay='ffplay -hide_banner'
alias ytdl='yt-dlp'
alias ytdl-old='youtube-dl'
alias mpv-360='mpv --ytdl-format="(bv+ba/b)[height<=?360]"'
alias mpv-480='mpv --ytdl-format="(bv+ba/b)[height<=?480]"'
alias syncthing='syncthing -no-browser'
alias rmmeta='exiftool -All= -overwrite_original'

pushd() { builtin pushd "$@" > /dev/null; }
popd() { builtin popd "$@" > /dev/null; }

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

bind '"\eOQ": " pushd ..\n"' # F2
bind '"\eOR": " git status -s\n"' # F3
bind '"\eOS": " popd\n"' # F4
bind '"\e[18~": " dirs -p\n"' # F7
bind '"\e[19~": clear-screen' # F8
bind '"\e[20~": " history 16\n"' # F9

bind -m vi '" ": "f "'
bind '"\"": "\C-v\"\C-v\"\e[D"'
bind '"`": "\C-v`\C-v`\e[D"'
bind '"(": "\C-v()\e[D"'
bind '"[": "\C-v[]\e[D"'
bind '"{": "\C-v{}\e[D"'

#alias ls='ls -Fh --color'
#alias B=brew
#remnant() { join <(brew leaves) <(brew deps "$1"); }
#[ "$PWD" != "$HOME" -a "$PWD" -ef "$HOME" ] && cd

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi
