#!/bin/sh

root="/usr/share/overwall"
#root="/Users/fang/Documents/GitHub/overwall_list/test"
File="${root}/update ${root}/downbin ${root}/preload"

for i in $File
do
    cp -f ${i}.bak $i
done