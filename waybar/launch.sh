#!/usr/bin/env bash
sleep 2
# Terminate already running bar instances
killall waybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
waybar &


