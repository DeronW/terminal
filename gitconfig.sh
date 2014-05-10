
# user
git config --global user.name "delong"
git config --global user.email w.del@qq.com

# editor
git config --global core.editor vim

# paper
git config --global core.paper less

# color
git config --global color.ui true
git config --global color.branch true
git config --global color.diff true
git config --global color.interactive true
git config --global color.status true

# merge
git config --global merge.tool vimdiff

# format
# convert LF to CRLF at end of line
git config --global core.autocrlf input

# system
git config --system receive.fsckObjects true

# self define
# pretty git log 
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# git config file location : ~/.gitconfig
# if use .gitconfig instead of command, use config format
