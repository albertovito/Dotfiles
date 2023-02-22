#!/usr/bin/bash
if grep -q open /proc/acpi/button/lid/LID0/state; then
    swaymsg output eDP-1 enable && swaymsg workspace 1 output eDP-1
else
    swaymsg output eDP-1 disable && swaymsg workspace 1 output HDMI-A-1       
fi
