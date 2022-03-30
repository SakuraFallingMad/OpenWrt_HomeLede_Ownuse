#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add HomeLede prepareCompile.sh
disablePkgsList="
./feeds/pw/chinadns-ng 
./feeds/pw/ipt2socks 
./feeds/pw/shadowsocksr-libev 
./feeds/pw/shadowsocks-rust 
./feeds/lienol/verysync 
./feeds/lienol/luci-app-verysync 
./feeds/lienol/luci-app-softethervpn 
./feeds/packages/utils/docker-compose 
./feeds/packages/net/miniupnpd 
./feeds/packages/net/mwan3 
./feeds/packages/utils/dockerd 
./feeds/packages/utils/docker 
./feeds/packages/utils/containerd 
./feeds/packages/utils/libnetwork 
./feeds/packages/utils/tini 
./feeds/packages/utils/runc 
./feeds/packages/net/adguardhome 
./feeds/packages/net/dnscrypt-proxy2 
./feeds/packages/net/https-dns-proxy 
./feeds/packages/net/smartdns 
./feeds/packages/net/xtables-addons 
./feeds/packages/net/softethervpn5 
./feeds/packages/net/pdnsd-alt 
./feeds/packages/net/microsocks 
./feeds/packages/net/dns2socks 
./feeds/luci/applications/luci-app-sqm 
./feeds/luci/applications/luci-app-dockerman 
./feeds/luci/applications/luci-app-kodexplorer 
./feeds/luci/applications/luci-app-ipsec-server 
./feeds/luci/applications/luci-app-serverchan 
./feeds/luci/applications/luci-app-pptp-server 
./feeds/luci/applications/luci-app-pppoe-relay 
./feeds/luci/applications/luci-app-guest-wifi 
./feeds/luci/applications/luci-app-ramfree 
./feeds/luci/applications/luci-app-netdata 
./feeds/luci/collections/luci-lib-docker 
./feeds/luci/themes/luci-theme-argon
./feeds/xiaoqingfeng/luci-theme-argon 
"

function disableDulicatedPkg()
{
	if [ -d $1 ];then
		rm -rf $1
		echo $1" Disabled."
	fi
}

./scripts/feeds update -a

for disablePkg in $disablePkgsList
do
	disableDulicatedPkg $disablePkg
done

./scripts/feeds update -i
./scripts/feeds install -a

if [ ! -f .config ];then
cp defconfig .config
echo "Default .config created."
fi
