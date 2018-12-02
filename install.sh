#!/bin/bash
sudo mount -o remount,size=12G,noatime /tmp

trizen -Su zsh xorg i3-gaps pcsc-tools yubico-yubioath-desktop-git nerd-fonts-complete terminator rofi compton python-pywal feh conky ranger ccid opensc lsof scrot i3lock-fancy-git arandr ntp light-git bluez bluez-utils w3m udiskie htop network-manager-applet foxitreader wireshark-qt keychain gnupg stow cups system-config-printer neofetch vim pacman-contrib neofetch powertop zip unzip unrar p7zip speedtest-cli firefox linux linux-headers networkmanager openssh cronie xdg-user-dirs dosfstools ntfs-3g btrfs-progs exfat-utils autofs fuse3 fuseiso alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-bluetooth cups-pdf qbittorrent thunderbird vlc code networkmanager-openvpn lastpass-cli polybar jq twmn-git notification-daemon acpi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

systemctl start pcscd.service


