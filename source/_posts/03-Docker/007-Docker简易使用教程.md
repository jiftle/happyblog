---
title: Docker简易使用教程
time: 2019-12-17 14:00
tags: [Markdown,blog]
notebook: blog
---

# Docker简易使用教程

## 配置注册处镜像

- 配置阿里云的加速器，支持配置多个镜像
```
$ cat /etc/docker/daemon.json
{
    "registry-mirrors": [
        "https://registry.docker-cn.com",
        "https://eqcxmbvw.mirror.aliyuncs.com"
    ]
}
```

## 容器运行状态

- `docker container stats`

## 查看网络状态


```
docker inspect mongo |grep IP
```
