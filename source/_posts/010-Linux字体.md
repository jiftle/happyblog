---
title: Linux下安装字体
time: 2019-12-25 11:48
tags: [[[Markdown,daily]]]
notebook: diary
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


