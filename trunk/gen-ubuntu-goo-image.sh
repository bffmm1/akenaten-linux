#!/bin/sh
echo "get utils"
apt-get install syslinux squashfs-tools mkisofs sbm
mkdir image image/casper image/isolinux image/install
cp -rf isolinux image/
cp chroot/boot/vmlinuz-2.6.27-7-generic image/casper/vmlinuz
cp chroot/boot/initrd.img-2.6.27-7-generic image/casper/initrd.gz
cp /usr/lib/syslinux/isolinux.bin image/isolinux/
cp -rf install image/
cp -rf dists image/
cp -rf pool image/
#cp /boot/memtest86+.bin image/install/
#cp /boot/sbm.img image/install/
#cp isolinux.cfg image/isolinux/isolinux.cfg
#cp isolinux.txt image/isolinux/isolinux.txt
echo "make manifest"
chroot chroot dpkg-query -W --showformat='${Package} ${Version}\n' > image/casper/filesystem.manifest
cp image/casper/filesystem.manifest image/casper/filesystem.manifest-desktop
sed -ie '/ubiquity/d' image/casper/filesystem.manifest-desktop
echo "make squash"
mksquashfs chroot image/casper/filesystem.squashfs
cp README.diskdefines image/README.diskdefines
echo "make md5"
cd image && find . -type f -print0 | xargs -0 md5sum > md5sum.txt
echo "make iso"
sudo mkisofs -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ../ubuntu-remix.iso .


