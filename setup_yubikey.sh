#!/bin/bash
yay -Sy --noconfirm  pcsc-tools yubioath-desktop ccid yubikey-manager-qt gnupg dbus-broker
sudo systemctl enable pcscd.service
sudo systemctl start pcscd.service
sudo systemctl enable --now dbus-broker.service
gpg --recv $KEYID