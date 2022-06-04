#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
#echo 'src-git lienol https://github.com/Lienol/openwrt-package' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
echo 'src-git 1287329 https://github.com/1287329/openwrt-diy' >> feeds.conf.default
#liuran001软件源
#git clone https://github.com/liuran001/openwrt-packages package
#SSR
#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#网络监控中文版
#git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
#filebrowser
#git clone https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
