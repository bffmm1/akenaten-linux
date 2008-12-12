This is example for innovative linux lite-system
================================================

Add CrunchBang Repository
=========================
wget http://crunchbang.net/packages-8.10.xx/crunchbang.list -O /etc/apt/sources.list.d/crunchbang.list
wget -q http://crunchbang.net/crunchbang.key -O- | apt-key add - && apt-get update

Add Medibuntu Repository
========================
wget http://www.medibuntu.org/sources.list.d/intrepid.list -O /etc/apt/sources.list.d/medibuntu.list
apt-get update && apt-get install medibuntu-keyring && apt-get update


