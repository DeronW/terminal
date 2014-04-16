terminal
==========

适用于linux的终端配置, 包括 bash, tmux,  vim.

为什么选择这几种工具

1. shell, bash or zsh ?
> 功能够用即可, zsh可配置项很多但是也用不到,而且个人不喜欢 zsh 的命令补全方式和智能命令记忆

2. 分屏, screen or tmux ?
> 原因很简单, 因为 tmux 更好看

3. 编辑器 vim or emacs ?
> 听说了 emacs 的学习曲线后, 敬而远之

vimrc
---------

VIM配置,推荐使用VIM7.4版本,虽然这套配置大部分时间被用来写python,但是也同样试用于其它语言

用vim的vundle来管理vim插件,安装vim相关插件时要先安装vundle, 地址: https://github.com/gmarik/vundle
安装完vundle后复制vimrc到当前用户目录下, 文件名为 .vimrc
然后通过vim命令安装所需插件 :BundleInstall

没有使用powerline,而选择了airline,合适就好,不用勉强使用过于强大的功能

按当时情况选择是否安装YouCompleteMe

tmux
--------

重新绑定了全局快捷键, 用 Ctrl + a 代替 Ctrl + b, 因为按着方便

定义颜色, 使用 "xterm" 的 terminal 颜色方案, 这样不会造成 VIM 的颜色主题混乱

使用方法:

> 把 ``tmux.conf`` 的内容复制到 ~/.tmux.conf 文件内

bash
-------

定义了颜色和几个命令的别名, 也有需要安装的工具, 比如 ``ack-grep``

使用方法:

> 把 ``bashrc`` 的内容复制到 ~/.bashrc 文件内

git
-----

* 自定义了 ``git`` 的 ![输出颜色](http://git-scm.com/book/ch7-1.html) ,
* 重新格式化了 log 的 ![输出格式](https://coderwall.com/p/euwpig) ,
