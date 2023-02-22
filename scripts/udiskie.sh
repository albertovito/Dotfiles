#!/bin/bash
sleep 1
# Terminate already running udiskie istance
killall udiskie
# Launch udiskie
udiskie -A -t
