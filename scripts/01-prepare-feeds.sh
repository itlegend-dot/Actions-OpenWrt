#!/bin/bash
cd openwrt

# 备份原文件
cp feeds.conf.default feeds.conf.default.bak

# 追加 NSS 软件源（适配 6.12 内核）
echo "src-git nss https://github.com/AgustinLorenzo/openwrt-nss-packages.git;main" >> feeds.conf.default

echo "feeds 配置完成，已添加 NSS 源"
