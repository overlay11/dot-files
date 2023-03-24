setxkbmap -layout us,ru -variant euro,mac \
    -option grp:caps_toggle,grp_led:caps \
    -option terminate:ctrl_alt_bksp

xrdb ~/.Xresources
[ -f ~/.Xresources.local ] && xrdb -merge ~/.Xresources.local

#xinput set-prop "PixArt Microsoft USB Optical Mouse" \
#    "libinput Natural Scrolling Enabled" 1

#xrandr --output default --mode 1280x768
#xrandr --dpi 96

[ -f ~/.xinitrc.local ] && . ~/.xinitrc.local

exec icewm-session
