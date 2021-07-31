#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate
#sed -i "/uci commit network/i\uci set network.lan.ipaddr='192.168.2.2'" package/lean/default-settings/files/zzz-default-settings                # IPv4 地址(openwrt后台地址)
#sed -i "/uci commit network/i\uci set network.lan.netmask='255.255.255.0'" package/lean/default-settings/files/zzz-default-settings             # IPv4 子网掩码
#sed -i "/uci commit network/i\uci set network.lan.gateway='192.168.2.1'" package/lean/default-settings/files/zzz-default-settings               # IPv4 网关
#sed -i "/uci commit network/i\uci set network.lan.broadcast='192.168.2.255'" package/lean/default-settings/files/zzz-default-settings           # IPv4 广播
#sed -i "/uci commit network/i\uci set network.lan.dns='192.168.2.1，180.76.76.76'" package/lean/default-settings/files/zzz-default-settings     # DNS(多个DNS要用空格分开)



# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='N3700'' package/lean/default-settings/files/zzz-default-settings
# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i 's/OpenWrt /不言° $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g' package/lean/default-settings/files/zzz-default-settings
# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-netgear/g' feeds/luci/collections/luci/Makefile
# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
#删除部分插件
rm -rf package/lean/luci-app-netdata
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-uugamebooster
rm -rf package/lean/luci-app-usb-printer
# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
#sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
#sed -i 's/services/nas/g' package/lean/luci-app-samba4/luasrc/controller/samba4.lua
sed -i 's/services/nas/g' feeds/luci/applications/luci-app-samba/luasrc/controller/samba.lua
sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.po
sed -i 's/"管理权"/"改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-turboacc/po/zh-cn/turboacc.po
