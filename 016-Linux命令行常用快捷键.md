---
title: Linux命令行常用快捷键
time: 2019-12-31 11:28
tags: Markdown,blog
notebook: blog
---

# Linux命令行常用快捷键

以下命令为Linux中高频发常用命令，适用于Linux中远程连接客户端软件“SecureCTR”和“Xshell” 。其他远程客户端软件使用情况基本与之类似

## 高频命令

- 补全命令
    - tab   补全命令，每补全一个字符至少两次。

- 移动光标快捷键：
    - Ctrl+a   光标回到命令行首。
    - Ctrl+e    光标回到命令行末。
    - Ctrl+f   光标向右移动一个字符。
    - Ctrl+b   光标向左移动一个字符。

- 中断命令：
    - Ctrl+c  中断正在执行的任务命令或者删除整行。

- 暂停命令：
    - Ctrl+z   暂停正在运行行中的任务。

## 低频命令

- 复制快捷键：
    - Ctrl+Insert   复制命令（选中字符进行复制）

- 粘贴快捷键：
    - Ctrl+Insert   粘贴命令 

- 剪切命令：
    - Ctrl+k  剪切光标处到行尾处的字符。（有删除的作用）
    - Ctrl+u  剪切光标处到行首处的字符。（有删除的作用）
    - Ctrl+w  剪切光标前的一个单词（有删除的作用）
    - Ctrl+y   粘贴Ctrl+k 、Ctrl+u、Ctrl+w  剪切/删除的文本

- 清除命令：
    - Ctrl+h   删除光标前一个字符，等同于‘’Backspance‘’
    - Del       删除光标后的一个字符。
    - Ctrl+l    清除屏幕上所有内容，并开始新的一行，

- 锁定、 解锁命令：
    - Ctrl+s   锁定界面，使之无法输入内容。
    - Ctrl+q   解开Ctrl+s的锁定界面，进行输入

- 重复使用命令：
    - Ctrl+d   退出当前shell命令行，也可以直接关闭shell运行。
    - Ctrl+r   搜索命令行中使用过的命令记录。
    - Ctrl+g   从正在执行Ctrl+r的搜索中退出。

- Esc相关命令：
    - Esc+.    获取上一条命令的最后部分（空格分隔）
    - Esc+b   移动到当前单词的开头。
    - Esc+f    移动到当前单词的结尾。

## 引文

- [Linux命令行常用快捷键](https://www.cnblogs.com/wangxiaopang/p/10828471.html)

