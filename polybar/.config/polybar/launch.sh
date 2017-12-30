#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Check if HDMI1 is connected
xrandr | grep "HDMI1 connected" &> /dev/null
if [ $? == 0 ]; then 
    polybar wide & 
fi

# Launch builtin bar
polybar builtin &

echo "Bars launched..."
