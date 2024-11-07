#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
cd openwrt
rm -rf feeds/luci/applications/luci-app-transmission
rm -rf feeds/packages/net/transmission
rm -rf feeds/packages/net/transmission-web-control
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/luci/applications/luci-app-msd_lite
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git Aaron https://github.com/Aaron3299/opackage.git' >> feeds.conf.default
