#!/bin/bash

# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#adblock plus
git clone https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus
#网络监控中文版
#git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
