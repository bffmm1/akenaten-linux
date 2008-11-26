#!/bin/bash
banfile="package.list"
for ip in `cat $banfile | awk '{print $1}'`; do
xpack=$xpack" "$ip 
done

#echo "mount proc and sys"
#mount /proc
#mount /sys
echo "update package"
apt-get update
locale-gen en_US.UTF-8
echo "apt standard package"
apt-get install ubuntu-standard casper locales console-data ubiquity
apt-get install discover laptop-detect os-prober rcconf
apt-get install $xpack
apt-get install linux-generic
echo "clean"
#apt-get clean
#rm -rf /tmp/*
#rm /etc/resolv.conf
#umount -l -f /proc
#umount -l -f /sys
#umount -l -f /dev
echo "Don't forget umount -l -f proc, sys, dev"
exit

