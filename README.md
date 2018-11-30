### Programs to install after fresh install of arch
zsh xorg i3-gaps pcsc-tools yubico-yubioath-desktop-git nerd-fonts-complete terminator rofi compton python-pywal feh conky ranger ccid opensc lsof scrot i3-lock-fancy arandr ntp light-git bluez bluez-utils w3m undiskie htop network-manager-applet foxitreader wireshark-qt keychain gnupg stow cups system-config-printer neofetch vim pacman-contrib neofetch powertop zip unzip unrar p7zip speedtest-cli firefox linux linux-headers networkmanager openssh cronie xdg-user-dirs dosfstools ntfs-3g btrfs-progs exfat-utils autofs fuse3 fuseiso alsa-utils also-plugins pulseaudio pulseaudio-alsa pulseaudio-bluetooth cups-pdf qbittorrent thunderbird vlc code networkmanager-openvpn lastpass-cli intel-ucode

### If not enough temp space for install
sudo mount -o remount,size=12G,noatime /tmp

### To do setup timef
sudo systemctl start ntpd
sudo ntpd -qg

### To setup wirehsark
sudo usermod -a -G wireshark $USER

### To setup key signing
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <key-id>
git config --global user.signingkey <key-id>

### To get the to 50 mirrors (Will Take Time)
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo rankmirrors -n 50 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist

### Lock Setup
sudo mkdir /usr/local/build
cd build
sudo git clone --recursive https://github.com/yvbbrjdr/i3lock-fancy-rapid
cd i3lock-fancy-rapid
sudo make
sudo cp i3lock-fancy-rapid /usr/bin
