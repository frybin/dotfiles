#!/bin/bash
sudo cp -r fonts/custom /usr/share/fonts
sudo mount -o remount,size=12G,noatime /tmp
yay -Sy --noconfirm ttf-material-design-icons-desktop-git
yay -Sy --noconfirm nerd-fonts-complete
