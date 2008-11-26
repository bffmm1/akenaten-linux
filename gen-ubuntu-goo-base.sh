#!/bin/sh
GENHOME=/home/akenaten/akbuild
echo "=== gen Ubuntu Goo Script ==="
echo "1. make chroot"
mkdir chroot
echo "2. gen bootstrap"
debootstrap --arch i386 intrepid chroot http://mirror1.ku.ac.th/ubuntu
echo "3. copy resolv"
cp /etc/resolv.conf chroot/etc/resolv.conf
echo "4. copy apt sources.list"
cp sources.list chroot/etc/apt/sources.list
echo "5. copy gen script"
cp gen-ubuntu-goo-apt*.sh chroot/tmp/
cp package.list chroot/tmp/
echo "6. don't forget mount --bind proc, sys, dev ";
echo "7. now chroot"
#chroot $GENHOME"/chroot"


