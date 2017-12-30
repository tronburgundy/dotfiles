#!/bin/bash

PS_ARGS='-ewwo pid,args'
SLEEP_TIME=60

betterlockscreen -s &

while ((1)); do
    sleep $SLEEP_TIME
    if ps $PS_ARGS | grep -q '[b]etterlockscreen'; then
        systemctl suspend
    else
        break
    fi
done
