#! /usr/bin/env ash

/etc/config/system
config system
        option log_file '/var/log/mylog'
        option log_remote '0'

/etc/init.d/log enable
/etc/init.d/log start
