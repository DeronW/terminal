# Terminal

个人常用终端工具集合，适用于 linux（Ubuntu）/ MacOS 。

### 依赖工具

MacOS

- curl

https://brew.sh/

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- git

https://git-scm.com/

```shell
brew install git
```

- curl

```shell
brew install git
```

### 字体安装

写代码需要的字体至少需要等宽字体,推荐字体:

[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

```shell
    brew tap homebrew/cask-fonts
    brew install svn
    brew install --cask font-source-code-pro
```

其它字体 [Front for code](http://input.fontbureau.com/)，font for code 可以在线定制字体, 然后下载使用。

### 配置

### 配置列表

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

### Task

**Finished**

- [x] auto config bash
- [x] auto config ack
- [x] auto config VIM
- [x] auto config git
