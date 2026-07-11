#!/bin/bash
cd openwrt

PATCH_DIR=../patches

for patch in "$PATCH_DIR"/*.patch; do
    if [ -f "$patch" ]; then
        echo "应用补丁：$(basename $patch)"
        patch -p1 < "$patch"
        if [ $? -ne 0 ]; then
            echo "错误：补丁 $patch 应用失败"
            exit 1
        fi
    fi
done

echo "所有补丁应用完成"
