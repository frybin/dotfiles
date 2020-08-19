#!/bin/bash
yay -Sy --noconfirm sof-firmware fwupd fprintd bolt imagemagick
sudo bash -c 'echo "load-module module-alsa-sink device=hw:0,0 channels=4" >> /etc/pulse/default.pa'
sudo bash -c 'echo "load-module module-alsa-source device=hw:0,6 channels=4" >> /etc/pulse/default.pa'
