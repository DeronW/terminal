#!/bin/bash

set -e

echo "Cleanup init.vim and plugged"
if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
else
    rm -rf ~/.config/nvim/init.vim ~/.local/share/nvim/plugged
fi

# download Vundle first
echo "download Vundle plugin first"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create vim config file
echo "create init.vim file"
touch ~/.config/nvim/init.vim

echo "\033[47;30m download config content \033[0m"
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/head.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/property.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/hotkeys.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/plugin.start.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/plugin.enhance.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/plugin.language.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/plugin.end.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/functions.vimrc >> ~/.config/nvim/init.vim
curl -s https://gitee.com/richgreenwood/terminal/raw/master/neovim/init.vim/foot.vimrc >> ~/.config/nvim/init.vim

echo "starting install Vim plugins"
nvim +PlugInstall +qall # install vim plugin

echo "\033[32m Nice try! \033[0m"
