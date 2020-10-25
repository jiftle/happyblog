---
title: Linux系统安装字体
date: 2019-12-25 11:48
updated: 2019-12-25 11:48
tags: [Markdown,GitMdNote,blog-2020-10]
categories: 技术文章
time: 2019-12-25 11:48
notebook: blog
---

#  Linux下安装字体


## 复制字体到目录

- 目录名字 `/usr/share/fonts/`

## 刷新缓存

- 生成字体索引信息
```
sudo mkfontscale
sudo mkfontdir
```
- 更新字体缓存
```
sudo fc-cache
```


