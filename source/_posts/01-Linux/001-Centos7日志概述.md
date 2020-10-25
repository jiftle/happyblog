---
title: 001-Linux日志概述.md
date: 2020-10-09 16:06
updated: 2020-10-09 16:06
tags: [Markdown,GitMdNote,blog-2020-10]
categories: Linux
time: 2020-10-09 16:06
notebook: blog
---

# 001-Cento7日志概述.md

centos7系统日志，常见介绍。



## 常见的日志

- 引导日志
    - /var/log/boot.log
- 登录日志
    - last 成功的登录
    - lastb  失败的登录
    - /var/log/btmp 非文本文件
    - 查看命令 last -f  /var/log/btmp
- 操作日志
- 防火墙
- 计划任务
    - /var/log/cron
        - 每个执行的计划任务都会被记录
- 内存缓冲信息
    - /var/log/dmesg
  - 最新信息
  - 整体系统信息
  - 安全信息（ssh登录，退出）
  - 安装包信息
  - 审计日志
  - 安装日志

