APM Mission Planner 2.0.10 for armhf
================

[APM Mission Planner](https://github.com/diydrones/apm_planner) (2.0.10) Debian armhf and bash script for start in Debian chroot

HOWTO
=====
 1. install debian or debian in chroot (/src/chroot/debian) on your armhf device (toshiba ac100 for example)
 2. copy anything form tar.gz archive to /src/chroot/debian/root/release/ (for chroot)
 3. add debian root user to dialout group (sudo adduser username dialout) (for chroot)
 4. start ./apmplanner_chroot.sh (for chroot) or ./apmplanner2 in release folder
