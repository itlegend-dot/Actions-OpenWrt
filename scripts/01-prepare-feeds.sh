#!/bin/bash
set -euo pipefail

cd openwrt

# 备份原配置
cp feeds.conf.default feeds.conf.default.bak

# 替换为社区维护的NSS软件源，适配6.12内核与qualcommax平台
echo "src-git -n 1 nss https://github.com/JuliusBairaktaris/nss-packages.git;main" >> feeds.conf.default

echo "✅ feeds 配置完成，已替换为可用NSS源"
