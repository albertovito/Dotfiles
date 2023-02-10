#!/bin/bash
sleep 1
# Terminate already running lxsession istance
killall lxsession
# Launch lxsession
lxsession &
