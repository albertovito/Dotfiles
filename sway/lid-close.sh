#!/usr/bin/bash
if grep -q open /proc/acpi/button/lid/LID0/state; then
    swaymsg output eDP-1 enable 
else
    swaymsg output eDP-1 disable
fi

HDMI_STATUS="$(cat /sys/class/drm/card0-HDMI-A-1/status)"

if [ "${HDMI_STATUS}" = connected ]; then
 swaymsg workspace number 4
else
 swaymsg workspace number 1
fi
