#!/bin/sh

xrandr --output LVDS1 --off
xrandr --output VIRTUAL1 --off
xrandr --output DP3 --off
xrandr --output DP1 --off
xrandr --output HDMI2 --off
xrandr --output HDMI1 --off
xrandr --output LVDS1 --off
xrandr --output VGA1 --off
xrandr --output DP2 --mode 2560x1440 --pos 0x0 --rotate normal
xrandr --output HDMI3 --mode 1920x1080 --pos 2560x152 --rotate normal
sleep 1
# move workspaces to correct locations
i3-msg "workspace 1; move workspace to output DP2"
i3-msg "workspace 2; move workspace to output DP2"
i3-msg "workspace 3; move workspace to output HDMI3"
i3-msg "workspace 4; move workspace to output HDMI3"
# select primary workspaces for each monitor
i3-msg "workspace 3"
i3-msg "workspace 1"
