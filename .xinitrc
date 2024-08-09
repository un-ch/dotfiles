#!/bin/bash

xterm &
/usr/bin/redshift &
./.dealing_with_todo_tasks.sh

AKKO_USB_CONNECTION_STATUS=$(lsusb | grep Akko | cut -d' ' -f8)

if [ "$AKKO_USB_CONNECTION_STATUS" = "Akko" ]; then
    setxkbmap -option caps:escape_shifted_capslock
fi

/usr/bin/i3
