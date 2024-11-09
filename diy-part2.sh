#!/bin/bash
# 此脚本用处是：定制个性化参数
#============================================================================================
# 1-设置默认主题
#sed -i 's/luci-theme-bootstrap/luci-theme-netgear/g' feeds/luci/collections/luci/Makefile

# 2-设置管理地址
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 3-设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 4-修改时间格式
sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 5-添加固件日期
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk
sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk

# 6-修正硬件信息
sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/autocore

# 7-修改主机名字，把NAS修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='NAS'' package/lean/default-settings/files/zzz-default-settings
# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i 's/OpenWrt /不言° @ OpenWrt /g' package/lean/default-settings/files/zzz-default-settings

# 8-增固件连接数
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# 9-修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
#sed -i 's/services/nas/g' feeds/luci/applications/luci-app-samba4/luasrc/controller/samba4.lua
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/feeds/luci/luci-app-turboacc/po/zh-cn/turboacc.po

#  10-删除部分插件
rm -rf package/lean/luci-app-netdata
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-uugamebooster
rm -rf package/lean/luci-app-usb-printer
rm -rf feeds/luci/applications/luci-app-transmission
rm -rf feeds/packages/net/transmission
rm -rf feeds/packages/net/transmission-web-control
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/luci/applications/luci-app-msd_lite
