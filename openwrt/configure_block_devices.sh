#! /usr/bin/env ash

opkg install block-mount

mkfs.f2fs /dev/sda1 byuuid!
mkswap /dev/sda2

mkdir /mnt/sda1
mount /dev/sda1 /mnt/sda1
mkdir /mnt/cproot
mount --bind / /tmp/cproot
tar -C /mnt/cproot -cvf - . | tar -C /mnt/sda1 -xf -
umount /mnt/cproot

block detect > /etc/config/fstab

zile /etc/config/fstab
config 'mount'
        option  target  '/'
        option  device  '/dev/sda1'
        option  uuid    '31b3fd42-4ab8-4422-9cd0-81b4c4ccf749'
        option  fstype  'ext4'
        option  options 'rw,sync'
        option  enabled '1'

Expand tmpfs

swapiness

REBOOT

