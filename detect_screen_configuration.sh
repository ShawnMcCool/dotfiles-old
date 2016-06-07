#!/bin/bash

DP_YES=0
HDMI_YES=0;
ANY_YES=0

xrandr | grep -q "DP2 connected" && DP_YES=1 && ANY_YES=1
xrandr | grep -q "HDMI3 connected" && HDMI_YES=1 && ANY_YES=1

if [ $DP_YES -eq 1 -a $HDMI_YES -eq 1 ]; then
	~/.i3/screen_layout_docked.sh
else
	~/.i3/screen_layout_laptop.sh
fi

exit 0
