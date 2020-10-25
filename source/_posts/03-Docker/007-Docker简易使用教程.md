---
title: 007-Docker简易使用教程.md
date: 2019-12-17 14:00
updated: 2019-12-17 14:00
tags: [Markdown,GitMdNote,blog-2020-10]
categories: 3-Docker
time: 2019-12-17 14:00
notebook: blog
---

# 007-Docker简易使用教程.md

## 配置DockerHub官方仓库(注册处)镜像

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

## 查看日志

```
docker logs -f mongo
```
