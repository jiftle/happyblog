---
title: 001-Deepin下编译vim8.md
date: 2020-10-23 11:45
updated: 2020-10-23 11:45
tags: [Markdown,GitMdNote,blog-2020-10]
categories: 2-Vim
time: 2020-10-23 11:45
notebook: blog
---

# 001-Deepin下编译vim8.md

## 前言

- deepin v20版本，自带的vim8.1版本，不能满足coc.nvim的最低使用要求(不支持浮动窗口)，所以自己编译。
- **有个偷懒的办法**，deepin v20支持snap安装，`snap find vim`，找到最新的vim or nvim  安装就可以了，版本是最新的，当前 2020-10-24 最新版本是vim8.2 and nvim 0.4.4

## 编译环境

```
OS: deepin v20
```

## 清理

- 卸载已存在版本vim

```
sudo apt purge vim vim-gtk vim-runtime vim-gnome vim-common vim-tiny vim-gui-common
```

- dpkg卸载，有些apt卸载不掉的软件包
```
查询
dpkg -l |grep lua

卸载并清除配置
sudo dpkg --purge lua5.1
```
- 清理冗余的软件包
```
sudo apt autoremove
```

## 步骤

1. 下载vim工程源码
```
https://github.com/vim/vim.git
```

2. 配置编译选项
- 配置命令
```
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local \
            --enable-fail-if-missing
```
- 编译参数说明
    - 首先需要注意的是 Vim 不能同时支持 Python2 和 Python3，所以 —enable-pythoninterp=yes 参数要去除。
```
--with-features=huge：支持最大特性
--enable-rubyinterp：打开对ruby编写的插件的支持
--enable-pythoninterp：打开对python编写的插件的支持
--enable-python3interp：打开对python3编写的插件的支持
--enable-luainterp：打开对lua编写的插件的支持
--enable-perlinterp：打开对perl编写的插件的支持
--enable-multibyte：打开多字节支持，可以在Vim中输入中文
--enable-cscope：打开对cscope的支持
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ 指定python 路径
--with-python-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ 指定python3路径
--prefix=/usr/local/vim：指定将要安装到的路径(自行创建)
```

3. 编译

```
make
```
4. 安装

- 建议安装步骤
    - 安装系统自带的vim，这样vi命令管用. `sudo apt install -y vim`
    - 使用自己编译的版本覆盖 `sudo make install`

