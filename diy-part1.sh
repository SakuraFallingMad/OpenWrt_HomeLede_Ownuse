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
./feeds/luci/applications/luci-app-dockerman 
./feeds/luci/applications/luci-app-kodexplorer 
./feeds/luci/applications/luci-app-softethervpn 
./feeds/luci/applications/luci-app-sqm 
./feeds/luci/themes/luci-theme-argon 
./feeds/packages/net/adguardhome 
./feeds/packages/net/dnscrypt-proxy2 
./feeds/packages/net/https-dns-proxy 
./feeds/packages/net/miniupnpd 
./feeds/packages/net/mwan3 
./feeds/packages/net/smartdns 
./feeds/packages/net/xtables-addons 
./feeds/packages/utils/containerd 
./feeds/packages/utils/docker 
./feeds/packages/utils/docker-compose 
./feeds/packages/utils/dockerd 
./feeds/packages/utils/libnetwork 
./feeds/packages/utils/runc 
./feeds/packages/utils/tini 
./feeds/pw_packages/chinadns-ng 
./feeds/xiaoqingfeng/ipt2socks-alt 
./feeds/xiaoqingfeng/luci-theme-argon 
./feeds/xiaoqingfeng/softethervpn5 
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
