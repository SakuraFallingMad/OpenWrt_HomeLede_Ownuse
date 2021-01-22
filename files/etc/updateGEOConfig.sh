#!/bin/sh
## v2ray geosite
curl -o /usr/share/v2ray/geosite.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat" -k
# v2ray geoip
curl -o /usr/share/v2ray/geoip.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat" -k
# xray geosite
curl -o /usr/share/xray/geosite.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat" -k
# xray geoip
curl -o /usr/share/xray/geoip.dat "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat" -k
# 重启程序以触发更新 ipset
# /etc/init.d/passwall reload