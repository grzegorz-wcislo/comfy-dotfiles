#!/bin/bash
IMG=/tmp/lock.jpg
red=ff6c6bff
yellow=ecbe7fff
foreground=ffffffff
background=282c34ff
invisible=00000000

set -e

scrot $IMG
magick mogrify -scale 12.5% -paint 1 -scale 800% $IMG

killall -q -u $USER -USR1 dunst || true

xset s off dpms 0 10 0

lock() {
    i3lock -t -n -e -i $IMG \
        --indicator \
        --insidecolor=$background --ringcolor=$foreground --line-uses-inside \
        --keyhlcolor=$red --bshlcolor=$red --separatorcolor=$invisible \
        --insidevercolor=$yellow --insidewrongcolor=$red \
        --ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+86:y+1003" \
        --radius=20 --veriftext="" --wrongtext="" --noinputtex="" \
        --force-clock --timecolor=$foreground --timepos="ix+r+10:iy+r/2" --time-align 1 \
        --datecolor=$invisible

    xset s off -dpms

    killall -q -u $USER -USR2 dunst || true
}

lock &
