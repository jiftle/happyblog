---
title: 003-Docker运行图形界面程序.md
date: 2019-12-02 17:38
updated: 2019-12-02 17:38
categories: 技术文章
time: 2019-12-02 17:38
tags: [Markdown,blog]
notebook: blog
---

# 003-Docker运行图形界面程序.md

## 原理简介

## 宿主机配置

- 宿主机系统中安装x11服务
```bash
sudo apt-get install x11-xserver-utils
```
- 启动容器前执行`xhost +`

## 容器启动配置

- 容器运行时加入参数，uid和gid两个参数不需要
```bash
-v /tmp/.X11-unix:/tmp/.X11-unix `# gui程序需要`\
-e DISPLAY=$DISPLAY \
```
- 完整指令
```
docker run -itd \
-v ~:/home/john `# 默认工作目录，映射` \
-v /usrlocal/git:/home/john/git `# git仓库目录` \
-p 8001:8001 `# 日志仓库，预览服务` \
-p 8080:8080 `# web程序调试端口` \
-w /home/john `# 默认工作目录` \
-v /etc/localtime:/etc/localtime:ro `# 当地时间` \
-v /tmp/.X11-unix:/tmp/.X11-unix `# gui程序需要`\
-e DISPLAY=$DISPLAY \
--name devenv-vim `# 容器名字` \
jiftle/devenv-vim:V1.0.0.B.6_191208 \
bash
```

## 测试

- 安装GUI小工具`sudo apt-get install xarclock`
- 运行工具`xarclock`
- 配置成功，会显示个桌面时钟

## 高阶，在Docker中运行Emacs

- 经过测试，网上的方法，会引起deepin桌面系统的崩溃，不建议用这种方式
- x11docker 验证了debian下有bug，导致x11 server崩溃
- 调整方向，使用别人做好的spacemacs Docker
- 网上的Docker解决了dbus的问题，但是中文输入法不支持的问题，仍然存在
- 可能是这句`-v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket `
```bash
docker run -ti --rm -v $('pwd'):/mnt/workspace \
 -v /etc/localtime:/etc/localtime:ro \
 -v ~/.ssh/id_rsa:${HOME}/.ssh/id_rsa:ro \
 -v ~/.gnupg:${HOME}/.gnupg \
 -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \  
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v /etc/machine-id:/etc/machine-id:ro \
 -e DISPLAY=$DISPLAY \
 -e TZ=UA \
 --name spacemacs jare/spacemacs
 ```
- 关于输入法的问题，EmcasChina有解答pyim，明天安装pyim试试
- [https://github.com/tumashu/pyim](https://github.com/tumashu/pyim)
