#!/bin/sh
mount --bind /proc chroot/proc
mount --bind /dev chroot/dev
mount --bind /sys chroot/sys
