
echo 'start config vim'
# download Vundle first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# create vim config file
touch ~/.vimrc
echo '' > ~/.vimrc

curl -fsSL https://raw.githubusercontent.com/DeronW/terminal/master/vim.sh >> ~/.vimrc
vim +PluginInstall +qall # install vim plugin

echo 'vim setup complete'