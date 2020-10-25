---
title: 027-vagrant使用入门.md
time: 2020-10-03 15:22
tags: [Markdown,GitMdNote,blog-2020-10]
notebook: blog
---

# 027-vagrant使用入门.md

## vagrant官方网站

![image-20201007114212736](https://gitee.com/yctxkj/imagerepo/raw/master/image-20201007114212736.png)

## 官方镜像仓库

https://app.vagrantup.com/boxes/search

![image-20201007114253089](https://gitee.com/yctxkj/imagerepo/raw/master/image-20201007114253089.png)

## 镜像离线下载或镜像加速

- 官方网站，大陆访问非常慢7kb/s
- http://www.vagrantbox.es/

![image-20201007114316815](https://gitee.com/yctxkj/imagerepo/raw/master/image-20201007114316815.png)

### 清华大学镜像 ubuntu 14.04 

https://mirrors.tuna.tsinghua.edu.cn/ubuntu-cloud-images/

- ubuntu 18

```
vagrant box add \
https://mirrors.tuna.tsinghua.edu.cn/ubuntu-cloud-images/bionic/current/bionic-server-cloudimg-amd64-vagrant.box \
--name ubuntu/bionic
vagrant-disksize

A Vagrant plugin to resize disks in VirtualBox
Installation

vagrant plugin install vagrant-disksize

Usage

Set the size you want for your disk in your Vagrantfile. For example

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'
  config.disksize.size = '50GB'
end
curl -sfL http://rancher-mirror.cnrancher.com/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn sh -

加入工作节点
curl -sfL http://rancher-mirror.cnrancher.com/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn K3S_URL=https://myserver:6443 K3S_TOKEN=mynodetoken sh -


kubectl apply -f https://192.168.2.139:8443/v3/import/7pdpdmnj4qr5hrjn2m4djljnk5fnjb59ln8tvkbrwgdhgphlpmxgbh.yaml


- 安装Docker(2020.9.26，最新版19.03)
sudo apt install docker.io
- 安装Docker-Compose
sudo apt install docker-compose

- 当前用户给予权限
sudo usermod -aG docker your-user

docker-compose/bionic 1.17.1-2 all
  Punctual, lightweight development environments using Docker

docker-containerd/bionic 0.2.3+git+docker1.13.1~ds1-1 amd64
  daemon to control runC (Docker's version)

docker-doc/bionic-updates 19.03.6-0ubuntu1~18.04.1 all
  Linux container runtime -- documentation

docker-registry/bionic 2.6.2~ds1-1 amd64
  Docker toolset to pack, ship, store, and deliver content

docker-runc/bionic 1.0.0~rc2+git+docker1.13.1~ds1-3 amd64
  Open Container Project - runtime (Docker's version)

docker.io/bionic-updates 19.03.6-0ubuntu1~18.04.1 amd64
  Linux container runtime
```

## k3s安装

## 虚拟机磁盘扩容
