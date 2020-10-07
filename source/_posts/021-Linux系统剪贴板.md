---
title: 021-Linux系统剪贴板.md
time: 2020-01-01 23:10
tags: Markdown,blog
notebook: blog
---

# Linux系统剪贴板


## 终端结果复制到系统剪贴板

- 需要借助xclip命令行工具'xclip'
- 安装`apt-get install -y xclip`

## 命令结果终端共享

- 结果输出到系统剪贴板'pwd | xclip -selection c'
- 粘贴`Ctrl + Shift + v`


## Docker和宿主机共享剪贴板

- 在共享卷创建clipboard.md文件
- 需要共享的写入到clipboard.md文件，相互读取就可以了
