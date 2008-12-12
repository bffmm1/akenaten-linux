#!/bin/bash
# A small bash script for installing CrunchBang Linux 8.10.01
# Run as root (sudo ./crunchbang-installer.sh)
#------------------------------------------------------------------------

#Add CrunchBang Repository
#=========================
wget http://crunchbang.net/packages-8.10.xx/crunchbang.list -O /etc/apt/sources.list.d/crunchbang.list
wget -q http://crunchbang.net/crunchbang.key -O- | apt-key add - && apt-get update

#Add Medibuntu Repository
#========================
wget http://www.medibuntu.org/sources.list.d/intrepid.list -O /etc/apt/sources.list.d/medibuntu.list
apt-get update && apt-get install medibuntu-keyring && apt-get update

apt-get install -y xorg openbox obconf obmenu network-manager-gnome dmz-cursor-theme hicolor-icon-theme lxpanel gmrun thunar thunar-thumbnailers thunar-volman thunar-archive-plugin thunar-media-tags-plugin jockey-gtk gedit gedit-plugins xfce4-mcs-manager acpi-support alsa-base linux-restricted-modules wireless-tools wpasupplicant linux-headers-generic xcompmgr firefox orage claws-mail claws-mail-plugins gnome-screensaver terminator xfce4-mixer gtk2-engines-murrine gnome-system-tools acpi acpi-support acpid apmd alsa-utils bc ca-certificates dbus winff gwibber remastersys usplash-theme-crunchbang crunchbang-look gdm hal hotkey-setup libpam-ck-connector libsasl2-modules pcmciautils policykit-gnome powermanagement-interface readahead screen gnome-power-manager laptop-detect make notification-daemon powernowd seahorse ssh-askpass-gnome file-roller lha unrar sharutils lzop rpm genisoimage ncompress unace p7zip p7zip-full tango-icon-theme tango-icon-theme-extras conky nitrogen gpicview liferea gftp gparted gnome-network-admin system-config-printer-gnome xfce4-taskmanager gnome-utils gnome-nettool gimp inkscape gcolor2 agave gnome-specimen fontypython xsane scrot libdvdcss2 xfce4-terminal brasero cowsay figlet htop w32codecs totem totem-plugins totem-plugins-extra ubuntu-restricted-extras gcalctool gworldclock evince xchm deluge-torrent skype xchat pidgin gnumeric rhythmbox abiword audacity pitivi kino gtk-recordmydesktop cheese sound-juicer serpentine xpad dwm-tools transset soundconverter adobe-flashplugin parcellite
apt-get install -y crunchbang-datafiles

echo "Installation complete. Thank you for installing CrunchBang Linux."
echo "You might want to consider rebooting your system."
echo ""
echo "Issue the following command to reboot:"
echo ""
echo "    \$ sudo reboot now"
echo ""

exit 0
