---
title: Emacs性能问题排查
time: 2019-12-31 22:11
tags: [[Markdown,blog]]
notebook: blog
---

# Emacs性能问题排查


## 查看启动时间

- 命令 `emacs --timed-requires`
- 输出
    - 屏幕中央的位置显示

## 查看内存和CPU占用

- 命令 `emacs --profile`
- 输出
    - 屏幕中央的位置显示

## 换个思路，Emacs以服务的方式运行

- 启动服务`emacs --daemon`
- 启动客户端`emacsclient -t`，终端方式启动
- 启动客户端的命令太长，在`/etc/bash.bashrc`设置别名
```bash
# ------------ 定义emacsclient的别名，Emacs后台服务模式启动，加快速度 -----------
alias et='emacsclient -t'
```
