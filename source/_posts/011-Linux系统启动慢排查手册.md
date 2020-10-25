---
title: Linux系统启动慢排查
time: 2019-12-25 13:59
tags: [[[Markdown,blog]]]
notebook: diary
---

#  Linux系统启动慢排查


## 排除指令

- systemd-cgls 查看服务的启动顺序
- systemd-analyze 查看启动时间
- systemd-analyze blame 查看启动占用的时间
- udisk.server 挂载分区的
