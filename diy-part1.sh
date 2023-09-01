#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
#echo 'src-git 1287329 https://github.com/1287329/openwrt-diy' >> feeds.conf.default

git clone https://github.com/fw876/helloworld package/diy/luci-app-ssr-plus
#svn export https://github.com/kiddin9/openwrt-packages/trunk/gowebdav package/diy/gowebdav
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-gowebdav package/diy/luci-app-gowebdav
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/diy/luci-app-adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-openclash package/diy/luci-app-openclash
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-dnsfilter package/diy/luci-app-dnsfilter
