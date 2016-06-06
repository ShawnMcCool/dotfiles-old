#!/bin/sh

./xrandr_config_docked.sh

sleep 1

# move workspaces to correct locations
i3-msg "workspace 1; move workspace to output DP2"
i3-msg "workspace 2; move workspace to output DP2"
i3-msg "workspace 3; move workspace to output HDMI3"
i3-msg "workspace 4; move workspace to output HDMI3"
# select primary workspaces for each monitor
#i3-msg "workspace 3"
#i3-msg "workspace 1"

notify-send "Screen Layout: Docked"
