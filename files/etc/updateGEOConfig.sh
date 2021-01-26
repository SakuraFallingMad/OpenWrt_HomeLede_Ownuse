#!/bin/sh
# v2ray geosite
# main
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geosite.dat "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat" -S
# back
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geosite.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat" -S
# pause a while
sleep 5
# v2ray geoip
# main
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geoip.dat "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat" -S
# back
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/v2ray/geoip.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat" -S
# pause a while
sleep 5
# xray geosite
# main
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geosite.dat "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat" -S
# back
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geosite.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat" -S
# pause a while
sleep 5
# xray geoip
# main
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geoip.dat "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat" -S
# back
curl -L --connect-timeout 20 --retry 5 --retry-all-errors --retry-delay 5 -o /usr/share/xray/geoip.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat" -S
# pause a while
sleep 5
# 重启程序以触发更新 ipset
# /etc/init.d/passwall reload