#!/bin/sh

root="/usr/share/overwall"
#root="/Users/fang/Documents/GitHub/overwall_list/test"
File="${root}/update ${root}/downbin ${root}/preload"

# 备份部分
for i in $File
do
    if [ ! -f "${i}.bak" ]; then
        cp $i ${i}.bak
    fi
done

# 防火墙规则部分(CDN)
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/eFw58nNRXXfTwU4#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/eFw58nNRXXfTwU4#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/t8eOh94EJIHTXR6#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/t8eOh94EJIHTXR6#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/avtPeqDKt645Arm#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/avtPeqDKt645Arm#g' ${root}/update

sed -i 's#https://cdn.jsdelivr.net/gh/fangxx3863/overwall_list/China_IPList#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/eFw58nNRXXfTwU4#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/fangxx3863/overwall_list/China_IPv6List#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/t8eOh94EJIHTXR6#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/fangxx3863/overwall_list/GFW_List#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP/avtPeqDKt645Arm#g' ${root}/update



# 防火墙规则部分(GITHUB)
sed -i 's#https://raw.githubusercontent.com/fangxx3863/overwall_list/main/China_IPList#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/eFw58nNRXXfTwU4#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/fangxx3863/overwall_list/main/China_IPv6List#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/t8eOh94EJIHTXR6#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/fangxx3863/overwall_list/main/GFW_List#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/avtPeqDKt645Arm#g' ${root}/update


# 分流域名部分
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP#g' ${root}/preload
sed -i 's#https://cdn.jsdelivr.net/gh/fangxx3863/overwall_list/Bypass#https://gitee.com/fangxx3863/overwall_backup/raw/master/KkFCtZkeAP#g' ${root}/preload

sed -i 's#https://raw.githubusercontent.com/fangxx3863/overwall_list/main/Bypass#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP#g' ${root}/preload
# NF
sed -i 's#NF_IPList_Small#MnwTZoJKZA7F3xf#g' ${root}/preload
sed -i 's#NF_IPList_Big#S1WMOUf0VmdLPT9#g' ${root}/preload
# TG
sed -i 's#TG_IPList#ufk8kHo4ZpsOekg#g' ${root}/preload


# K2P_16M架构BIN下载部分
while ! curl -m 9 -Lfso ${root}/downbin https://gitee.com/fangxx3863/overwall_backup/raw/master/downbin;do
		sleep 2
done
chmod +x ${root}/downbin
