#!/bin/bash
scrot -d 0 /home/grzegorz/.cache/lock_img.png
magick mogrify -scale 6.25% -paint 1 -scale 1600% /home/grzegorz/.cache/lock_img.png 
i3lock -e -i /home/grzegorz/.cache/lock_img.png
