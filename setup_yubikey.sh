#!/bin/bash
yay -Su pcsc-tools yubico-yubioath-desktop-git ccid yubikey-manager-qt
sudo systemctl enable pcscd.service
sudo systemctl start pcscd.service
