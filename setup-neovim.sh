set -e
echo "Cleanup init.vim and plugged"
rm -rf ~/.config/nvim/init.vim ~/.local/share/nvim/plugged

# download Vundle first
echo "download Vundle plugin first"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create vim config file
echo "create init.vim file"
touch ~/.config/nvim/init.vim

echo "\033[47;30m download config content \033[0m"
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/head.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/property.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/hotkeys.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/plugin.start.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/plugin.enhance.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/plugin.language.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/plugin.end.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/functions.vimrc >> ~/.config/nvim/init.vim
curl -s https://raw.githubusercontent.com/DeronW/terminal/master/neovim/foot.vimrc >> ~/.config/nvim/init.vim

echo "starting install Vim plugins"
nvim +PlugInstall +qall # install vim plugin

echo "\033[32m Nice try! \033[0m"
