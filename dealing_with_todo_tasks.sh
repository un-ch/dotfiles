#!/bin/bash

DATA_FILE=??????


TODAY_DATE=$(date "+%F" | cut -d'-' -f2,3)
NEXTDAY_DATE=$(date "+%F" --date="next day" | cut -d'-' -f2,3)

TODAY_TASK_LABEL=0
NEXT_DAY_TASK_LABEL=1
UNDATED_TASK_LABEL=!
DONE_TASK_LABEL=x

sed -i "s/^$DONE_TASK_LABEL:/$TODAY_TASK_LABEL:/g" $DATA_FILE
sed -i "s/^$NEXT_DAY_TASK_LABEL:/$TODAY_TASK_LABEL:/g" $DATA_FILE

sed -i "s/^$TODAY_DATE:/$TODAY_TASK_LABEL:/g" $DATA_FILE
sed -i "s/^$NEXTDAY_DATE:/$NEXT_DAY_TASK_LABEL:/g" $DATA_FILE
