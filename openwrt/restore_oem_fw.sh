#! /usr/bin/env ash

cd /tmp

wget http://downloads.linksys.com/downloads/firmware/FW_WRT1900ACSV2_2.0.2.188405_prod.img

sysupgrade -n -F FW_WRT1900ACSV2_2.0.2.188405_prod.img
