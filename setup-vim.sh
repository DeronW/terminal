set -e
echo "Cleanup .vimrck and .vim/"
rm -rf ~/.vimrc ~/.vim

# download Vundle first
echo "download Vundle plugin first"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# create vim config file
echo "create new .vimrc file"
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

echo "starting install Vim plugins"
vim +PluginInstall +qall # install vim plugin

echo "\033[32m Nice try! \033[0m"
