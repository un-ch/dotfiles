#!/bin/bash

if [ "$1" = "" ]; then
	echo "error: no project name";
fi

WORK_DIR=/home/us/prj

/usr/bin/i3-msg workspace 2 1>/dev/null ; xterm -e "cd $WORK_DIR/$1; $SHELL" & sleep 1
/usr/bin/i3-msg workspace 1 1>/dev/null ; xterm -e "cd $WORK_DIR/$1; $SHELL" & sleep 1;
