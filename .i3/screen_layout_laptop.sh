#!/bin/sh

xrandr --output VIRTUAL1 --off
xrandr --output DP3 --off
xrandr --output DP2 --off
xrandr --output DP1 --off
xrandr --output HDMI3 --off
xrandr --output HDMI2 --off
xrandr --output HDMI1 --off
xrandr --output VGA1 --off
xrandr --output LVDS1 --auto

sleep 3

#i3-msg "workspace 1; move workspace to output LVDS1"
#i3-msg "workspace 2; move workspace to output LVDS1"
#i3-msg "workspace 3; move workspace to output LVDS1"
#i3-msg "workspace 4; move workspace to output LVDS1"

notify-send "Screen Layout: Laptop"
