# Terminal

该项目包含适用于 linux（Ubuntu）/ MacOS 终端下几个常用工具的配置项(只有配置项, 不包含工具本身)

## 依赖工具

### Git

官网
[https://git-scm.com/](https://git-scm.com/)

安装

Ubuntu

> apt install git

Mac

> brew install git

### curl

官网
[https://curl.haxx.se/](https://curl.haxx.se/)

安装

Ubuntu

> apt install curl

Mac

> brew install curl

## 字体安装

写代码需要的字体至少需要等宽字体

推荐字体:

[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

安装

    brew tap caskroom/fonts
    brew cask install font-source-code-pro

[Front for code](http://input.fontbureau.com/)

font for code 可以在线定制字体, 然后下载使用

## 自动配置

### 快捷命令

如果懒惰, 那就不必想太多, 把下面命令复制到终端执行就行了.

Usage:

    curl -fsSL https://raw.githubusercontent.com/DeronW/terminal/master/quick-setup.sh | sh

### bash

系统自带工具, 推荐使用更高级的 shell 工具, 如果只使用 shell, 则可以使用以下 shell 配置.

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/bashrc -o ~/.bashrc --progress

使用 `fish` 或 `zsh` 作为默认 shell 后, 就不需要再配置 bash 了

### fish

官网 [http://fishshell.com/](http://fishshell.com/)

安装

Ubuntu

> apt install fish

Mac

> brew install fish

将默认 shell 修改成 fish

> chsh -s fish

on Mac, you should set Terminal preferences

![screenshot](https://raw.githubusercontent.com/DeronW/terminal/master/screenshots/QQ20180415-095633@2x.png)

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/fish >> ~/.config/fish/fish.config --progress

类似 oh-my-zsh, 在 fish shell 基础上也出现了

oh-my-fish [https://github.com/oh-my-fish/oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

compare to Zsh, I prefer fish. it's just satisfied my requirement.

### ack

官网 [https://beyondgrep.com/](https://beyondgrep.com/)

安装

Ubuntu

> apt install ack-grep

Mac

> brew install ack

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/ackrc >> ~/.ackrc --progress

### tmux

官网 [https://github.com/tmux/tmux/wiki](https://github.com/tmux/tmux/wiki)

安装

Ubuntu

> apt install tmux

Mac

> brew install tmux

![screenshot](https://raw.githubusercontent.com/DeronW/terminal/master/screenshots/622622648501670484.jpg)

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/tmux.conf >> ~/.tmux.conf --progress

定义颜色, 使用 "xterm" 的 terminal 颜色方案,
这样才不会造成 Vim 的颜色主题混乱

### git

-   自定义了 `git` 的 [输出颜色](http://git-scm.com/book/ch7-1.html)
-   重新格式化了 log 的 [输出格式](https://coderwall.com/p/euwpig)

![screenshot](https://raw.githubusercontent.com/DeronW/terminal/master/screenshots/1._git_lg__git_.jpg)

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/setup-git.sh | sh

### Vim

![screenshot](https://raw.githubusercontent.com/DeronW/terminal/master/screenshots/vi-vim-cheat-sheet-sch.gif)

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/setup-vim.sh | sh

more detail check [https://github.com/DeronW/terminal/tree/master/vim](https://github.com/DeronW/terminal/tree/master/vim)

### NeoVim

![screenshot](https://raw.githubusercontent.com/DeronW/terminal/master/screenshots/neovim-logo-600x173.png)

Usage:

    curl https://raw.githubusercontent.com/DeronW/terminal/master/setup-neovim.sh | sh

more detail check [https://github.com/DeronW/terminal/tree/master/neovim](https://github.com/DeronW/terminal/tree/master/neovim)

### Useful CLI commands

修改console中顯示的主機名稱:

sudo scutil --set HostName [新名字]

### Task

**Finished**

-   [x] auto config bash
-   [x] auto config ack
-   [x] auto config VIM
-   [x] auto config git

**TODO**

-   [ ] auto config fish shell
-   [x] fish shell function: shortcut git pull
-   [x] fish shell function: shortcut git push
-   [ ] self deinfe fish shell functions

### 为什么选择这几种工具

1. 命令行, bash vs. zsh ?

    > 功能够用即可, zsh 可配置项很多但是也用不到,而且个人不喜欢 zsh 的命令补全方式和智能命令记忆
    > 如果为了命令行更加人性化， 倒是比较推荐适用 [fish](http://fishshell.com/)

2. fish vs zsh?

    > fish is more simple, clean, pure, easy to config

3. 分屏, screen vs. tmux ?

    > 原因很简单, 因为 tmux 更好看

4. 版本管理: git vs. hg ?

    > 使用 git 做本版管理系统，因为它强大，普遍并且有 github 社区的存在。
    > git 和 hg 各有优势，据说 facebook 在用 hg 做 VCS

5. 编辑器 vim vs. emacs ?

    > 听说了 emacs 的学习曲线后, 敬而远之

6. Vim vs. NeoVim ?

    > worth to try new vim
