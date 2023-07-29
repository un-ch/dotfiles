#!/bin/bash

/usr/bin/redshift &
xterm &
# /usr/bin/barrier & i3-msg kill
./dealing_with_todo_tasks.sh
/usr/bin/i3
