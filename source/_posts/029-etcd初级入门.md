---
title: etcd初级入门
time: 2020-10-03 15:22
tags: [[[Markdown,blog-2019,blog-2019-12]]]
notebook: blog
---

# etcd初级入门

## 简介

etcd是k-v键值对数据库，常用来作为微服务架构下注册配置中心

## 常用组件

- etcd

  ```
  https://hub.fastgit.org/etcd-io/etcd
  1. 下载二进制文件，安装到系统目录下
  2. 运行etcd
  ```

  

- etcdkeeper

  ````
  1. 下载地址：
  https://hub.fastgit.org/evildecay/etcdkeeper
  
  2. 安装二进制文件
  
  3. 运行etcdkeeper，浏览器浏览，可以看到etcd的所有键值对
  ./etcdkeeper -p 8092 -h 127.0.0.1
  ````

![image-20201007232538187](https://gitee.com/yctxkj/imagerepo/raw/master/image-20201007232538187.png)

## 免责条款

以上内容来自于个人理解，可能有所偏驳。文章仅做参考，所产生的一切后果与作者无关。
