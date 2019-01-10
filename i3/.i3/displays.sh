#!/bin/bash
intern=eDP1
extern=HDMI1
# extern=DP2

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --auto --left-of "$extern" --output "$extern" --auto
    # xrandr --output "$intern" --auto --left-of "$extern" --output "$extern" --auto --rotate left
fi
