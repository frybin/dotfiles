### Run ./install.sh after fresh install of arch to install most packages

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
cd /usr/local/build 
sudo git clone --recursive https://github.com/yvbbrjdr/i3lock-fancy-rapid 
cd i3lock-fancy-rapid 
sudo make 
sudo cp i3lock-fancy-rapid /usr/bin 

### Crontab Jobs
*/5 * * * * /home/frybin/.config/twmn/check-battery.sh >/dev/null 2>&1

### Setup Notification
sudo vim /usr/share/dbus-1/services/org.freedesktop.Notifications.service
'''
[D-BUS Service]
Name=org.freedesktop.Notifications
Exec=/usr/lib/notification-daemon-1.0/notification-daemon
'''

