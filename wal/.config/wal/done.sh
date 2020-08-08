#!/bin/sh

if [ -e $HOME/.config/dunst/wal.sh ]; then
  	$HOME/.config/dunst/wal.sh
fi
if [ -e $HOME/.config/polybar/launch.sh ]; then
  	$HOME/.config/polybar/launch.sh 
fi
if [ -e $HOME/.local/bin/pywalfox ]; then
	$HOME/.local/bin/pywalfox update
fi
