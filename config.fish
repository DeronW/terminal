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

function pull --argument remote branch
    if test -n "$branch"
        git fetch $remote $branch
        git merge $remote/$branch
    else if test -n "$remote"
        git fetch origin $remote
        git merge origin/$remote
    else
        git fetch origin master
        git merge origin/master
    end
end

function push --argument remote branch
    if test -d .git
        # git add .
        git commit -am "I'm too lazy, nothing left"
        if test -n "$branch"
            git push $remote $branch
        else if test -n "$remote"
            git push origin $remote
        else
            git push origin master
        end
    else
        set_color --bold red
        echo "这不是一个git代码库:" $PWD 
        set_color normal
    end
end

function start
end
