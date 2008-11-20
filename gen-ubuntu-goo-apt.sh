#!/bin/sh
echo "mount proc and sys"
mount /proc
mount /sys
mount /dev
echo "update package"
apt-get update
locale-gen en_US.UTF-8
echo "apt standard package"
apt-get install ubuntu-standard casper locales console-data xserver-xorg-core xfonts-thai xfonts-base xfonts-scalable xfonts-75dpi xfonts-100dpi ttf-dejavu gnome-desktop-environment language-support-th ubiquity
echo "apt kernel"
apt-get install discover1 laptop-detect os-prober rcconf
apt-get install linux-generic 
echo "clean"
apt-get clean
rm -rf /tmp/*
rm /etc/resolv.conf
umount -l -f /proc
umount -l -f /sys
umount -l -f /dev
exit 
