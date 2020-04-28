#!/bin/sh

if [ -e $HOME/.config/dunst/wal.sh ]; then
  	$HOME/.config/dunst/wal.sh
fi
if [ -e $HOME/.config/polybar/launch.sh ]; then
  	$HOME/.config/polybar/launch.sh 
fi
if [ -e $HOME/Documents/Pywalfox/daemon/pywalfox.py ]; then
	$HOME/Documents/Pywalfox/daemon/pywalfox.py update
fi
