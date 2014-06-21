#!/bin/bash

xsetroot -solid '#101010' 
pactl set-sink-volume 0 '20%' &
xset -b &
setxkbmap dvorak
xset dpms 300 600 900 &
xbacklight -set 90 &
LC_ALL=C parcellite &
dunst &
