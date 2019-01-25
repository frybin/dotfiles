#!/bin/sh

case ${MONS_NUMBER} in
    1)
        mons -o
        wal -i $HOME/.wallpapers -o $HOME/.config/conky/pywal_conky.py
	;;
    2)
        mons -e right
        wal -i $HOME/.wallpapers -o $HOME/.config/conky/pywal_conky.py
	;;
    *)
        # Handle it manually
        ;;
esac
