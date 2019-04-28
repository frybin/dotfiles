#!/bin/bash

## Created By Aditya Shakya

MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 7 -yoffset -35 -xoffset 10 -width 15 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 -font "Fantasque Sans Mono 10" <<< " Lock| Reboot | Shutdown")"
            case "$MENU" in
                *Lock) blurlock] ;;
                *Reboot) systemctl reboot ;;
                *Shutdown) systemctl -i poweroff
            esac
