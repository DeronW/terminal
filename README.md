terminal
==========

适用于linux（Ubuntu）的终端配置:

* bash
* tmux
* vim
* git

为什么选择这几种工具

1. 命令行, bash VS zsh ?
> 功能够用即可, zsh可配置项很多但是也用不到,而且个人不喜欢 zsh 的命令补全方式和智能命令记忆
  如果为了命令行更加人性化， 倒是比较推荐适用 [fish](http://fishshell.com/)

2. 分屏, screen VS tmux ?
> 原因很简单, 因为 tmux 更好看

3. 编辑器 vim VS emacs ?
> 听说了 emacs 的学习曲线后, 敬而远之

4. 版本管理: git VS hg ?
> 使用 git 做本版管理系统，因为它强大，普遍并且有 github 社区的存在。
  git 和 hg 各有优势，据说 facebook 在用 hg 做VCS

vimrc
---------

推荐使用VIM7.4版本,虽然这套配置主要针对 ``python`` ,但是也同样试用于其它语言

安装，管理插件前要先安装 [vundle](https://github.com/gmarik/vundle)
安装完 ``vundle`` 后复制vimrc到当前用户目录下, 文件名为 .vimrc
然后通过 ``vundle`` 命令安装所需插件 ``:BundleInstall``

没有使用powerline,而选择了airline,合适就好,不用勉强使用过于强大的功能

推荐安装 ``YouCompleteMe`` 和 ``CTags`` 这两个都需要下载插件后再编译安装

tmux
--------


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

* 自定义了 ``git`` 的 [输出颜色](http://git-scm.com/book/ch7-1.html) ,
* 重新格式化了 log 的 [输出格式](https://coderwall.com/p/euwpig) ,
