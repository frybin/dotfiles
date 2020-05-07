#!/bin/bash
yay -Sy sof-firmware fwupd
#echo "load-module module-alsa-sink device=hw:0,0 channels=4" >> /etc/pulse/default.pa
#echo "load-module module-alsa-source device=hw:0,6 channels=4" >> /etc/pulse/default.pa