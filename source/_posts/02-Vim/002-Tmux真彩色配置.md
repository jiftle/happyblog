---
title: 002-Tmux真彩色配置.md
date: 2020-10-24 18:10
updated: 2020-10-24 18:10
tags: [Markdown,GitMdNote,blog-2020-10]
categories: 技术文章
time: 2020-10-24 18:10
notebook: blog
---

# 002-Tmux真彩色配置.md

## 前言

tmux默认不是真彩色，使用vim, `colo space_vim_theme`，提示"not enough colors"

## 适用环境(已测试)

- MacOS
- Linux(deepin)

## 配置

1. tmux配置`~/.tmux.conf`
```
set -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"
```

2. vim配置`.vimrc` mac下不需要这个设置, linux下也不需要
```
set termguicolors
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
```

## 注意

- 注意这里有个坑，就是每次改完tmux的配置，一定要保证你的shell里面的tmux session!全部关闭!，重启tmux才能看到效果哦.
- 查看tmux session的命令:
```
tmux list-sessions
```

## 参考文章

- [https://blog.csdn.net/ghostyusheng/article/details/88746182](https://blog.csdn.net/ghostyusheng/article/details/88746182)
