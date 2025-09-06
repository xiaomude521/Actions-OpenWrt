#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 确保在 openwrt 目录中操作
cd openwrt

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.4/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/option hostname LEDE/option hostname OpenWrt/g' package/base-files/files/bin/config_generate

# 确保目录存在
mkdir -p package/base-files/files/etc/

# 使用 echo 命令逐行写入 banner 内容（避免 HERE document 语法问题）
echo "_________" > package/base-files/files/etc/banner
echo "    /        /\      _    ___ ___  ___" >> package/base-files/files/etc/banner
echo "   /  LE    /  \    | |  | __|   \| __|" >> package/base-files/files/etc/banner
echo "  /    DE  /    \   | |__| _|| |) | _|" >> package/base-files/files/etc/banner
echo " /________/  LE  \  |____|___|___/|___|" >> package/base-files/files/etc/banner
echo " \        \   DE /" >> package/base-files/files/etc/banner
echo "  \    LE  \    /  -------------------------------------------" >> package/base-files/files/etc/banner
echo "   \  DE    \  /    %D" >> package/base-files/files/etc/banner
echo "    \________\/    -------------------------------------------" >> package/base-files/files/etc/banner
