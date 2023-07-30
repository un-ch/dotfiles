#!/bin/bash

/usr/libexec/geoclue-2.0/demos/agent &
/usr/bin/redshift &
xterm &
xset b off
# /usr/bin/barrier & i3-msg kill
./.dealing_with_todo_tasks.sh
/usr/bin/i3
