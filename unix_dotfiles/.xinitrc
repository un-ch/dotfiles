#!/bin/bash

/usr/bin/redshift &
xterm &
./.dealing_with_todo_tasks.sh

#./dubl_monitor.sh
VGA_STATUS=$(xrandr | grep VGA | cut -d' ' -f2)

if [ "$VGA_STATUS" = "connected" ]; then
    xrandr --output VGA1 --auto --right-of LVDS1;
fi

/usr/bin/i3

# /usr/bin/setxkbmap -option caps:escape_shifted_capslock
