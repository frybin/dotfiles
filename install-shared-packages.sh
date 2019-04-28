#!/bin/bash
sudo mount -o remount,size=12G,noatime /tmp

trizen -Su zsh pcsc-tools yubico-yubioath-desktop-git rofi python-pywal ccid \ 
opensc lsof ntp light-git bluez bluez-utils udiskie htop foxitreader \
wireshark-qt keychain gnupg stow cups system-config-printer neofetch vim \
pacman-contrib powertop zip unzip unrar p7zip speedtest-cli firefox linux \
linux-headers networkmanager openssh cronie xdg-user-dirs dosfstools ntfs-3g \
btrfs-progs exfat-utils autofs fuse3 fuseiso alsa-utils alsa-plugins pulseaudio \
pulseaudio-alsa pulseaudio-bluetooth cups-pdf qbittorrent thunderbird vlc code \
networkmanager-openvpn lastpass-cli jq tmux etcher spotify lightdm \
lightdm-webkit-theme-aether pavucontrol nerd-fonts-complete 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo systemctl enable pcscd.service
sudo systemctl enable lightdm.service
sudo systemctl start pcscd.service

sudo usermod -a -G wireshark $USER



