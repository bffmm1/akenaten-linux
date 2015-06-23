# how-to generate you own linux distribution #


1. Find more space in your harddisk.

2. Check out this trunk. <http://code.google.com/p/akenaten-linux/source/checkout>

3. Run following script step by step

> 3.1 generate LSB first

> `# ./gen-ubuntu-goo-base.sh`

> 3.2 the script will notice you to mount machine /proc, /sys and /dev for make the virtual machine for LSB after chroot. Now let's mount it.

> `# ./gen-ubuntu-goo-mount.sh`

> 3.3 After mount then change root to our LSB.

> `# chroot ./chroot`

> 3.4 Change dir to /tmp, you 'll find another scripts ready to run. If you want to install only ubuntu-standard version you can run script  "gen-ubuntu-goo-apt-standard.sh", or you are so geek you can use the script "gen-ubutnu-goo-apt.shgen-ubutnu-goo-apt.sh", edit it by vim first! or if you are lazy like me use the script "gen-ubuntu-goo-apt-downlist.sh" to install all packages that listed in package.list file :).

4. After install any packages what you want, then exit from chroot and unmout chroot/proc chroot/sys chroot/dev

> `# ./gen-ubuntu-goo-umount.sh`

5. If you want add deb package as CD/DVD ROM repository copy packages to pool/main/{1 st charactor of package name's} and update package database be using script update-repo.sh

> `# ./update-repo.sh`

6. Then let's create .iso file :) by run the script  "gen-ubutnu-goo-image.sh".

`# ./gen-ubutnu-goo-image.sh`

7. You 'll get the "ubuntu-remix.iso", so you can test it on vmware, virtualbox, qemu or burn it :)


`***`**Don't forget, if you are interested in this project and wanna to improve generate script or make any special packages, or any idea you can join
this project just read http://sites.google.com/a/ideaconnect.co.cc/akenaten/ and http://sites.google.com/a/ideaconnect.co.cc/akenaten/join-us. We
want to improve and bring the innovative SOHO/SMEs linux server to the world, we need your ideas :)**`***`