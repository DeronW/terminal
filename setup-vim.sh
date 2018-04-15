set -e
echo "\033[47;30m cleanup .vimrc and .vim \033[0m"
rm -rf ~/.vimrc ~/.vim

# download Vundle first
echo "\033[47;30m 下载Vundle插件 \033[0m"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# create vim config file
echo "\033[47;30m create .vimrc file \033[0m"
touch ~/.vimrc

echo "\033[47;30m download config content \033[0m"
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/head.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/property.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/hotkeys.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/plugin.start.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/plugin.content.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/plugin.end.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/functions.vimrc >> ~/.vimrc
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/vim/foot.vimrc >> ~/.vimrc

echo "\033[47;30m start install plugin \033[0m"
vim +PluginInstall +qall # install vim plugin

echo "\033[32m Vim Plugin installed \033[0m"