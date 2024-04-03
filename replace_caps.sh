#!/bin/bash

AKKO_USB_CONNECTION_STATUS=$(lsusb | grep Akko | cut -d' ' -f8)

if [ "$AKKO_USB_CONNECTION_STATUS" = "Akko" ]; then
    setxkbmap -option caps:escape_shifted_capslock
    echo "replaced"
fi
