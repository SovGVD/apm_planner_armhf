#!/bin/bash
sudo umount /srv/chroot/debian/dev
sudo umount /srv/chroot/debian/proc
sudo umount /srv/chroot/debian/tmp/.ICE-unix
sudo umount /srv/chroot/debian/tmp/.X11-unix
sudo mount --bind /dev /srv/chroot/debian/dev
sudo mount --bind /proc /srv/chroot/debian/proc
sudo mount --bind /tmp/.ICE-unix /srv/chroot/debian/tmp/.ICE-unix
sudo mount --bind /tmp/.X11-unix /srv/chroot/debian/tmp/.X11-unix
sudo cp .Xauthority /srv/chroot/debian/root/
sudo chroot /srv/chroot/debian/ /bin/bash -c "export XAUTHORITY=/root/.Xauthority && cd /root/release && DISPLAY=:0 ./apmplanner2"
