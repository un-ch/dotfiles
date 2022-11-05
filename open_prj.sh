#!/bin/bash

if [ "$1" = "" ]; then
	echo "error: no project name";
fi

WORKING_DIRECTORY=

/usr/bin/i3-msg workspace 2 1>/dev/null ; xterm -e "cd $WORKING_DIRECTORY/$1; $SHELL" & sleep 1
/usr/bin/i3-msg workspace 1 1>/dev/null ; xterm -e "cd $WORKING_DIRECTORY/$1; $SHELL" & sleep 1;
