---
title: 使用Docker构建开发环境
date: 2020-10-03 15:23
updated: 2020-10-03 15:23
categories: 技术文章
time: 2020-10-03 15:23
tags: [Markdown,GitMdNote,blog-2020-10]
notebook: blog
---

# 使用Docker构建开发环境

## Base Docker Images

- Ubuntu 1804

## 支持的系统

- Linux(deepin)
- MacOS(10.15)

## Feature

- vim 8.2
- gvim
- emacs 26.3
- spacemacs
- eclipse 3.8
- gtk2.0
- gtk3.0
- eclipse 4.15

## Docker和主机之间的互操作性

- 目录共享
- 剪贴板共享
- GUI程序运行在主机桌面

## 缺陷

- 大型的GUI不能运行，依赖多，（不如直接安装虚拟机）
- gvim中文输入法，不能解决
  - emacs can input chinese , select input-method of use set-input-method

```
sed '4,4s/tags: [/tags: [[/; 4,4s/$/&]/' 0-DevEnvBaseOnDocker.md]

sed -i 's/tags: [/tags: [[/g;s/tags: [.*/&]/g' `grep .md -rl ./`]
```

