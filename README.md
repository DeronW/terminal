terminal
==========

适用于linux（Ubuntu）/ MacOS 的终端配置:

* bash
* tmux
* vim
* git
* ack
* fish

为什么选择这几种工具

1. 命令行, bash vs. zsh ?
> 功能够用即可, zsh可配置项很多但是也用不到,而且个人不喜欢 zsh 的命令补全方式和智能命令记忆
  如果为了命令行更加人性化， 倒是比较推荐适用 [fish](http://fishshell.com/)

2. 分屏, screen vs. tmux ?
> 原因很简单, 因为 tmux 更好看

3. 编辑器 vim vs. emacs ?
> 听说了 emacs 的学习曲线后, 敬而远之

4. 版本管理: git vs. hg ?
> 使用 git 做本版管理系统，因为它强大，普遍并且有 github 社区的存在。
  git 和 hg 各有优势，据说 facebook 在用 hg 做VCS

5. fish vs zsh?
> fish is more simple, clean, pure, easy to config

vimrc
---------

配置文件 *vimrc*

推荐使用Vim 8 版本,虽然这套配置主要针对 ``python`` ,但是也同样试用于其它语言

安装，管理插件前要先安装 [Vundle](https://github.com/VundleVim/Vundle.vim)
安装完 ``vundle`` 后复制vimrc到当前用户目录下, 文件名为 .vimrc
然后通过 ``vundle`` 命令安装所需插件 ``:PluginInstall``

powerline vs airline:
> 合适就好,不用勉强使用过于强大的功能(这两个都是状态栏插件)

推荐安装 ``YouCompleteMe`` 和 ``CTags`` 这两个都需要下载插件后再编译安装

tmux
--------

配置文件 *tmux.conf*

定义颜色, 使用 "xterm" 的 terminal 颜色方案, 
这样不会造成 Vim 的颜色主题混乱

Usage:

> 把 ``tmux.conf`` 的内容复制到 ~/.tmux.conf 文件内

bash
-------

配置文件 *bashrc*

定义了颜色和几个命令的别名, 也有需要安装的工具, 比如 ``ack-grep``

Usage:

> 把 ``bashrc`` 的内容复制到 ~/.bashrc 文件内

使用 fish shell作为默认shell后, 就不需要再配置 bash 了

git
-----

* 自定义了 ``git`` 的 [输出颜色](http://git-scm.com/book/ch7-1.html) ,
* 重新格式化了 log 的 [输出格式](https://coderwall.com/p/euwpig) ,

ack
----

配置文件 *ackrc*

* 优化了搜索的文件格式
* 排除了一些库文件和压缩文件, 提升有效所有范围和搜索效率

Usage:

> 把配置文件写入 *~/.ackrc* 文件

fish
------

配置文件 *config.fish*

* 我最喜欢的 shell , 与zsh相比, 更喜欢fish

Usage:

> 把配置文件写入 *~/.config/fish/config.fish* 文件, fish会自动加载

类似oh-my-zsh, 在fish shell基础上也出现了 oh-my-fish

[https://github.com/oh-my-fish/oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

