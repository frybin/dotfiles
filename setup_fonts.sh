#!/bin/bash
sudo cp -r fonts/custom /usr/share/fonts
sudo mount -o remount,size=12G,noatime /tmp
yay -Sy --noconfirm nerd-fonts-complete 
