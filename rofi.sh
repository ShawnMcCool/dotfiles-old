#!/bin/bash

rofi -show drun -bw 10 -opacity "85" -eh 2 -color-enabled -width 600 -lines 5 -sidebar-mode -auto-select -terminal gnome-terminal -color-normal "#000000,#FFFFFF,#202020,#FFFFFF,#000000" -color-window "#000000,#000000" -font "System San Francisco Display 18" -ssh-command "gnome-terminal -e \"{ssh-client} {host}\""
