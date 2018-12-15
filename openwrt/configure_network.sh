#! /usr/bin/env ash

uci set wireless.radio1.htmode='HT40'
uci set wireless.radio1.disabled='0'
uci set wireless.default_radio1.ssid='Chez Monsieur'
uci set wireless.default_radio1.encryption='psk2+ccmp'
uci set wireless.default_radio1.key='test123'
uci commit wireless
wifi