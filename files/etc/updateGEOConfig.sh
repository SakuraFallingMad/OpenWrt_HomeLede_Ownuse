#!/bin/sh
## v2ray geosite
curl -L --retry 10 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geosite.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat" -S
# v2ray geoip
curl -L --retry 10 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geoip.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat" -S
# xray geosite
curl -L --retry 10 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geosite.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat" -S
# xray geoip
curl -L --retry 10 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geoip.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat" -S
# 重启程序以触发更新 ipset
# /etc/init.d/passwall reload