#!/usr/bin/env bash

#BAR_ICON=""
#NOTIFY_ICON=/usr/share/icons/Papirus/32x32/apps/system-software-update.svg

get_total_updates() { UPDATES=$(checkupdates 2>/dev/null | wc -l); }

get_total_updates

if (( UPDATES == 1 )); then
    echo "$UPDATES Update"
elif (( UPDATES > 1 )); then
    echo "$UPDATES Updates"
fi