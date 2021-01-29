#!/bin/sh
if [ -e $HOME/.config/mako/wal.sh ]; then
  	$HOME/.config/mako/wal.sh 
fi
if [ -e $HOME/.config/wofi/wal.sh ]; then
  	$HOME/.config/wofi/wal.sh 
fi
if [ -e $HOME/.local/bin/pywalfox ]; then
	$HOME/.local/bin/pywalfox update
fi
