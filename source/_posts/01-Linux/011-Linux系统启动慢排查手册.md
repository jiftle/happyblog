---
title: Linux系统启动慢排查
date: 2019-12-25 13:59
updated: 2019-12-25 13:59
tags: [Markdown,GitMdNote,blog-2020-10]
categories: 01-Linux
time: 2019-12-25 13:59
notebook: blog
---

# 011-Linux系统启动慢排查手册.md

#  Linux系统启动慢排查


## 排除指令

- systemd-cgls 查看服务的启动顺序
- systemd-analyze 查看启动时间
- systemd-analyze blame 查看启动占用的时间
- udisk.server 挂载分区的
