#!/bin/bash
yay -Sy --noconfirm lightdm-webkit-theme-litarvan
sudo cp ~/dotfiles/lightdm/lightdm-webkit2-greeter.conf ~/dotfiles/lightdm/lightdm.conf /etc/lightdm
sudo systemctl enable lightdm.service
