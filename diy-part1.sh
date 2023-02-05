#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
#echo 'src-git 1287329 https://github.com/1287329/openwrt-diy' >> feeds.conf.default

#git clone https://github.com/kiddin9/openwrt-bypass package/diy/openwrt-bypass
#git clone https://github.com/sbwml/luci-app-alist package/diy/luci-app-alist
#svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/diy/adguardhome
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/diy/luci-app-adguardhome
#svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/diy/luci-app-passwall2
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-passwall package/diy/luci-app-passwall
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-passwall2 package/diy/luci-app-passwall2
git clone https://github.com/fw876/helloworld package/diy/luci-app-ssr-plus
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/diy/luci-app-adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/diy/adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/gowebdav package/diy/gowebdav
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-gowebdav package/diy/luci-app-gowebdav
svn export https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/diy/luci-app-smartdns
svn export https://github.com/kenzok8/openwrt-packages/trunk/luci-app-dnsfilter package/diy/luci-app-dnsfilter
