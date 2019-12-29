#!/bin/bash
trizen -Sy lightdm-webkit2-greeter
cd /usr/share/lightdm-webkit/themes && git clone https://github.com/ffwff/modern.git
sudo cp ~/dotfiles/lightdm/lightdm-webkit2-greeter.conf ~/dotfiles/lightdm/lightdm.conf /etc/lightdm
sudo systemctl enable lightdm.service
