set fish_greeting ''

alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

function github
    cd ~/github
end

function wk
    cd ~/workspace
end

function ll
    ls -a -l $argv
end

function pull
    git fetch
    git rebase origin master
end

function push
end

function start
end
