#!/bin/bash

#~/.i3/detect_screen_configuration.sh

## Merge Xresources
xrdb -merge ~/.Xresources &

## Desktop background or picture
#feh --bg-scale "/home/shawn/Pictures/Wallpapers/linux.jpg" &
feh --bg-scale "/home/shawn/Pictures/Black.png" &
#feh --bg-scale "/home/shawn/Pictures/Wallpapers/divided_kingdom.jpg" &
#feh --bg-scale "/home/shawn/Pictures/pillars.png" &

# default volume 
pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo '50%' &

# lcd brightness
xbacklight -set 80 &

# disable beeps
xset -b &

# dvorak, for great comfort
setxkbmap dvorak

# dpms timeouts. standby -> suspend -> off
xset dpms 600 1200 2000 &

# wifi manager
LC_ALL=C nm-applet &
LC_ALL=C /usr/sbin/CopyAgent &
LC_ALL=C screencloud &

# notifier
dunst &

# refresh
xrefresh &

# special keys
xmodmap /home/shawn/.Xmodmap &

# configure natural scrolling for touchpad
# configure normal scrolling for mouse
#xinput --set-button-map 'Logitech Unifying Device. Wireless PID:1017' 1 2 3 4 5
#xinput --set-button-map 11 1 2 3 4 5 

# start up scratchpad apps

#/usr/bin/subl && i3-msg move scratchpad
/usr/bin/subl3
sleep 1s && /usr/sbin/i3-msg '[title="Sublime Text$"]' move scratchpad 

# Telegram

i3-msg 'workspace 3; exec telegram'

i3-msg 'exec albert'
 
sleep 1s && for ((n=0;n<3;n++))
do
  i3-msg '[title="Telegram"]' resize shrink width; resize shrink width
done


# Chrome

sleep 1s && i3-msg 'workspace 1; exec google-chrome-stable'


# all done
exit 0
