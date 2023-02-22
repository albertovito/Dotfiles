#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi --conf=/home/alberto/Dotfiles/wofi/powerbutton.conf | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		swaylock
                ;;
        logout)
                swaymsg exit
                ;;
esac
