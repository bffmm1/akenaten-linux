#!/bin/sh
rm -rf .cache/*
rm -rf dists/intrepid/Release*
rm -rf dists/intrepid/main/binary-i386/*
apt-ftparchive generate apt-ftparchive.conf
apt-ftparchive -c apt-release.conf release dists/intrepid > dists/intrepid/Release
ls -R pool/ | grep deb > packagelist.txt
