---
title: 使用docker构建vim-golang开发环境
date: 2019-12-05 23:38
updated: 2019-12-05 23:38
categories: 3-Docker
time: 2019-12-05 23:38
tags: [Markdown,blog]
notebook: blog
---

# 使用docker构建vim-golang开发环境

## 原理

docker可以构建一个属于自己的开发环境容器，需要使用时，下载镜像，开箱即用，避免每次都搭建开发环境，浪费不少的时间。

## 路线图Road Map

- vim-golang 开发环境
- spacemacs Org-mode  --放弃，鸡肋  --已实现，转变思维不一定非要运行在GUI模式下

## 目的(抓住主要矛盾,围绕目标来展开工作)

- 搭建基于Docker的开箱即用的，工作和开发环境  --已实现
- 支持golang开发  --已实现
- 支持TypeScript的开发  --已实现

## 需要解决的问题

- vim插件vim-airline，状态栏图标不显示  --优先级，低   --已解决
- 重新构建devenv-vim镜像，使用dockerfile技术构建，减小体积，去除冗余  --优先级，低 [#D]
    - 已进行尝试，但是体积不能没有减小，反而增大了

## 如何使用

- 家里-运行
```bash
docker run -itd \
`# 注释请忽略，----------- 工作目录映射 -------------` \
-w /home/john `# 默认工作目录` \
-v ~:/home/john `# 默认工作目录，映射` \
-v /media/jiftle/work/work/git/coding_net/grocery/dailylog:/home/john/dailylog `# 日志仓库目录` \
-v /media/jiftle/work/work/git:/home/john/git `# git仓库目录` \
`# 注释请忽略，----------- 用户密钥 -------------` \
-v ~/.ssh:/home/john/.ssh:ro `# .ssh密钥` \
`# 注释请忽略，----------- 端口映射 -------------` \
-p 8001:8001 `# 日志仓库，预览服务` \
-p 8080:8080 `# web程序调试端口` \
`# 注释请忽略，----------- 解决时区问题 -------------` \
-v /etc/localtime:/etc/localtime:ro \
jiftle/devenv-vim:V1.0.0.B.6_191208
```
- 公司运行
```
docker run -itd \
`# 注释请忽略，----------- 设置名称 -------------` \
--name="devenv-vim" \
`# 注释请忽略，----------- 工作目录映射 -------------` \
-w /home/john `# 默认工作目录` \
-v ~:/home/john `# 默认工作目录，映射` \
-v /usrlocal/git:/home/john/git `# git仓库目录` \
`# 注释请忽略，----------- 用户密钥 -------------` \
-v ~/.ssh:/root/.ssh:ro `# .ssh密钥` \
`# 注释请忽略，----------- 端口映射 -------------` \
-p 8001:8001 `# 日志仓库，预览服务` \
-p 8080:8080 `# 调试运行，端口` \
`# 注释请忽略，----------- 解决时区问题 -------------` \
-v /etc/localtime:/etc/localtime:ro \
`# 注释请忽略，----------- 自动重启 -------------` \
--restart=always \
`# 共享主机剪贴板，因为剪贴板是x11的一部分` \
-e DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
jiftle/devenv-vim:v0.3
```
- 附加进入容器`docker exec -it devenv-vim bash`

## 容器保存为镜像

- 提交容器的快照作为镜像
```bash
docker commit -m='vim,git,vim-plug,ctags,tig,lang=C.UTF-8' -a='jiftle' 5d jiftle/devenv-vim:V1.0.0.B.1_191206
```

## 内存限制报错处理

- docker run报错
```
Your kernel does not support cgroup swap limit capabilities
```
- 原因，内核需要设置cgroup参数
- 处理步骤
    - 修改配置grub配置文件`/etc/default/grub`
    - 修改`GRUB_CMDLINE_LINE`参数为`GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"`
    - 更新Grub，`sudo update-grub`
    - 重启机器

## 注意事项

- 需要映射的目录
  - /home 主目录
  - dailylog 日志目录
  - devrepo 开发仓库

## 存在问题

- vim状态栏的字体图标不显示，乱码  --已解决，字体问题NerdFont可以解决
    - 家里电脑正常

## 日志

- 12.5 周四
  - 日志
    - 开始尝试制作vim镜像，成功
    - 安装git
    - 安装vim插件
    - 配置golang的开发环境
  - 遗留问题
    - 关于映射目录下软连接不能用的问题，因为软连接的路径指向的是宿主机的，不是容器里的，所以软连接失效了
    - 尝试解决
      - 方法1：常用的开发目录，都用卷标的方式引用下  --已解决
      - 方法2：目标目录搞成软连接，软连接再映射到容器里
- 12.8 周日
  - V1.0.0.B.6版本
    - 开发环境
      - vim
      - golang env
      - node env
      - YCM
    - 工具
      - curl
      - wget
      - git
      - tig
      - tree
      - htop
      - cmake
      - python3
- 12.9 周一
  - 尝试x11docker，能够运行图形化程序，但是不是我想要的   --放弃这种方式
- 12.25 周二
    - 制作v0.5版本镜像，目标如下
        - 支持多种配色       --ok
        - 支持代码片段       --ok
        - 加入自己开发的vim插件  --ok
        - 为镜像设置默认的git配置账号和Email，名字要中性的，不要体现自己的名字，保护隐私  -ok
- 2019-12-25 Wed.
    - [x] GitMdBlog模板修改修改，列表页，文章页超级链接，打开新页面
- 2019-12-27 周五
    - v0.7版本
        - spacemacs，集成完毕，without gui, run on the term
        - vim markdown outline
        - vim-orgmode，能够显示*.org文件，自动折叠功能，语法高亮
        - spacemacs，Org-Mode，自定义GTD时间管理法可以用  --最大心愿实现
    - v0.8版本
        - tmux
- 2020-05-24 周日
    - 集成了emacs
    - eclipse
    - vim

