#!/bin/bash

set -e

# bash
echo -e "\033[47;30m config bash \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/bashrc -o ~/.bashrc --progress
echo -e "\033[32m bash config complete \033[0m"

# fish
echo -e "\033[47;30m config fish \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/fish >> ~/.config/fish/fish.config --progress
echo -e "\033[32m fish config complete \033[0m"

# ack
echo -e "\033[47;30m config ack \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/ackrc >> ~/.ackrc --progress
echo -e "\033[32m ack config complete \033[0m"

# tmux
echo -e "\033[47;30m config tmux \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/tmux.conf >> ~/.tmux.conf --progress
echo -e "\033[32m tmux config complete \033[0m"

# git
echo -e "\033[47;30m config git \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/setup-git.sh | sh
echo -e "\033[32m git config complete \033[0m"

# vim
echo -e "\033[47;30m config Vim \033[0m"
curl https://raw.githubusercontent.com/DeronW/terminal/master/setup-vim.sh | sh
echo -e "\033[32m Vim config complete \033[0m"