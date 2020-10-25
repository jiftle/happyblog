---
title: 使用emby构建家庭媒体中心
date: 2019-12-02 17:38
updated: 2019-12-02 17:38
categories: 技术文章
tags: [[Markdown,blog-2019,blog-2019-12]]
time: 2019-12-02 17:38
notebook: blog
---

# 001-使用emby构建家庭媒体中心


## 原理

使用Docker快速构建媒体中心
- `/media`媒体目录
```
$ docker run \
-e PUID=1000 \
-e PGID=1000 \
-p 8096:8096 \
-v /docker/emby/host/config:/config \
-v /host/media:/media \
nvllsvm/emby-unlocked
```

docker run \
-e PUID=1000 \
-e PGID=1000 \
-p 8096:8096 \
-p 8200:8200 \
-p 1900:1900/udp \
-v /docker/emby/host/config:/config \
-v /host/media:/media/jiftle/storage/媒体库 \
nvllsvm/emby-unlocked
