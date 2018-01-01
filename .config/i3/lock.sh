#!/bin/bash
scrot -d 0 /home/grzegorz/.cache/lock_img.png
magick mogrify -scale 6.25% -paint 1 -scale 1600% /home/grzegorz/.cache/lock_img.png 
#magick mogrify -scale 12.5% -paint 3 -scale 800% /home/grzegorz/.cache/lock_img.png 
#magick mogrify -paint 5 /home/grzegorz/.cache/lock_img.png 
i3lock -e -i /home/grzegorz/.cache/lock_img.png
sleep 0.2
