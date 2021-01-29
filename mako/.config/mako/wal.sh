#!/bin/sh

# Symlink dunst config
ln -sf ~/.cache/wal/makorc ~/.config/mako/config

# Restart dunst with the new color scheme
pkill mako
mako &
