# WRT1900ACS Openwrt firmware

## Prepare drive

```
./partition_device.sh /dev/sdb
```


## Basic configuration

https://openwrt.org/toh/linksys/wrt_ac_series

```
Set root password
SSH interface: unspecified (all)
Password authentication: disable
Allow root logins with password: disable
Upload ssh key
Enable ssh

ssh root@192.168.1.1

opkg install git-http ca-bundle zile

git clone https://github.com/sclaret/router-config.git

./configure_network.sh

Network - Interfaces
Radio 0 - add: mode ac, channel 52, 80mhz, ESSID <>, network lan, encryption wpa2-psk, cipher CCMP
Radio 1 - add: mode N, channel 1, 40mhz, ESSID <>, network lan, encryption wpa2-psk, cipher CCMP
IP address pusher

./set_wifi_auth.sh
```

## Extended configuration

```
./configure_block_devices.sh

./configure_logging.sh

./configure_adblock.sh

./configure_wireguard.sh
```

Todo:
- guest network
- clone dotfiles


# References

- [UCI](https://openwrt.org/docs/guide-user/base-system/uci)
- [Extroot pivot-overlay](https://openwrt.org/docs/guide-user/additional-software/extroot_configuration)
- [Extroot pivot](https://samhobbs.co.uk/2013/11/more-space-for-packages-with-extroot-on-your-openwrt-router)
- [Setting up a Wireguard server](https://casept.github.io/post/wireguard-server-on-openwrt-router/)
- [UCI guest wifi](https://gist.github.com/tongpu/c54d1f45a8874d28b5d4)