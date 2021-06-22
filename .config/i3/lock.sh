#!/bin/bash
IMG=/tmp/lock.jpg
red=ff6c6bff
yellow=ecbe7fff
foreground=ffffffff
background=282c34ff
invisible=00000000

set -e

scrot --overwrite $IMG
magick mogrify -fill "#$background" -flip -draw "rectangle 36,26 290,126" -flip -scale 12.5% -paint 1 -scale 800% $IMG

killall -q -u $USER -USR1 dunst || true

xset s off dpms 0 10 0

lock() {
    i3lock -t -n -e -i $IMG \
        --indicator \
        --time-font="Fira Code" \
        --time-size=30 \
        --inside-color=$background --ring-color=$foreground --line-uses-inside \
        --keyhl-color=$red --bshl-color=$red --separator-color=$invisible \
        --insidever-color=$yellow --insidewrong-color=$red \
        --ringver-color=$foreground --ringwrong-color=$foreground --ind-pos="x+86:y+1004" \
        --radius=20 --verif-text="" --wrong-text="" --noinput-text="" \
        --force-clock --time-color=$foreground --time-pos="ix+20+10:iy+10" --time-align 1 \
        --date-color=$invisible

    xset s off -dpms

    killall -q -u $USER -USR2 dunst || true
}

lock &
