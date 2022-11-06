#!/bin/bash

if [ "$1" = "" ]; then
	echo "error: no project name";
	exit;
fi

WORKING_DIR=

if [ ! -d "$WORK_DIR/$1" ]; then
	echo "error: $1 project is not found";
	find $WORK_DIR -maxdepth 1 -name "*$1*" -type d -printf "%p\n";
	exit;
fi

/usr/bin/i3-msg workspace 2 1>/dev/null ; xterm -e "cd $WORKING_DIR/$1; $SHELL" & sleep 1
/usr/bin/i3-msg workspace 1 1>/dev/null ; xterm -e "cd $WORKING_DIR/$1; $SHELL" & sleep 1;
