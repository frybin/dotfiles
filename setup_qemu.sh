#!/bin/bash
yay -Sy --noconfirm qemu qemu-arch-extra virt-manager ebtables
sudo systemctl enable --now dnsmasq.service
sudo systemctl enable --now libvirtd
sudo usermod -a -G kvm red
sudo cp kvm/50-libvirt.rules /etc/polkit-1/rules.d/50-libvirt.rules