#!/bin/bash

~/.i3/detect_screen_configuration.sh

# set background 
# xsetroot -solid '#101010' 
## Merge Xresources
xrdb -merge ~/.Xresources &

## Desktop background or picture
feh --bg-scale "/home/shawn/Pictures/the witcher 3.jpg" &

# default volume 
pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo '50%' &

# load "funny" sample
pactl upload-sample ~/.i3/that_was_easy.wav that_was_easy &
#pactl upload-sample ~/.i3/volume_blip.wav volume_blip &

# lcd brightness
xbacklight -set 100 &

# disable beeps
xset -b &

# dvorak, for great comfort
setxkbmap dvorak

# dpms timeouts. standby -> suspend -> off
xset dpms 600 1200 2000 &

#~/bin/configure-input-devices >/dev/null 2>&1 &

# clipboard manager
LC_ALL=C parcellite &
# wifi manager
LC_ALL=C nm-applet &
# Copy.com cloud storage agent
LC_ALL=C /home/shawn/Apps/Copy/x86_64/CopyAgent &
LC_ALL=C screencloud &

# notifier
dunst &

# refresh
xrefresh &

# special keys
sleep 5s && xmodmap /home/shawn/.Xmodmap &

# start workrave
#workrave &

# configure natural scrolling for touchpad
# configure normal scrolling for mouse
xinput --set-button-map 'Logitech Unifying Device. Wireless PID:1017' 1 2 3 4 5
xinput --set-button-map 11 1 2 3 5 4 


# all done
exit 0
