#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# https://github.com/P3TERX/Actions-OpenWrt
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#SSR
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#dnsfilter去广告
git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter
#网络速度测试
#git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest
#网络监控中文版
git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
#adguardhome
git clone https://github.com/1287329/AdGuardHome package/adguardHome
#git clone https://github.com/1287329/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#filebrowser
#git clone https://github.com/xiaozhuai/luci-app-filebrowser package/diy/luci-app-filebrowser
