# Small5_Openwrt固件Overwall插件规则备份

OverWall的规则备份

# 注意 (提倡使用这个)

此教程的规则每日从Small_5大佬的仓库自动同步，可以解决内地用户无法启动OW的问题

# 使用方法一（Win自带SSH可用）

ssh进入路由器

执行

`curl https://gitee.com/fangxx3863/overwall_backup/raw/master/Overwall_Gitee_mirror.sh|sh`

# 使用方法二（无需额外软件）

打开路由器后台，进入软件包页面

![97AD40DB68BED7B3AE5F13FFD5CA1BCE](https://user-images.githubusercontent.com/48589001/140941076-4b6c207a-54a4-4573-b435-0b271eec6076.png)

按要求键入`luci-i18n-ttyd-zh-cn`

![342AAFE9FD467EE01455C5CDE0D37F9E](https://user-images.githubusercontent.com/48589001/140941255-a635ba40-d35c-4660-923e-80082a13979c.png)

![2A68E9572E41997C2F7A7FDCAC3C6DC8](https://user-images.githubusercontent.com/48589001/140941273-6f4a118e-1a92-4641-a723-fd4c4a731fc0.png)

接着打开服务，Terminal

![C592C51B72C25CEB02B8A5626F6F7352](https://user-images.githubusercontent.com/48589001/140941332-3852bb8e-fa94-41a1-b465-58306fedf060.png)

按要求输入账号密码

![2903AFBBA4B42543CB71253D7FCE7D20](https://user-images.githubusercontent.com/48589001/140941381-f12ffbf9-5bb4-40dc-817e-926f29aae891.png)

粘贴一键脚本

`curl https://gitee.com/fangxx3863/overwall_backup/raw/master/Overwall_Gitee_mirror.sh|sh`

回车运行

![FA8FC319829E150ABFCBC06790D5034C](https://user-images.githubusercontent.com/48589001/140941431-63667503-442a-4241-bd72-aa47feabf1ee.png)

# 恢复原始文件

将上述教程中的命令修改为`curl https://cdn.jsdelivr.net/gh/fangxx3863/overwall_list/BackToStore.sh|sh`执行即可

# 后记

希望群主能够早日回来给我们更新固件吧！

另外有两个文件实在找不到用在哪里的就没去理了
