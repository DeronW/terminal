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
        set BR (git describe --contains --all HEAD)
        git fetch origin $BR
        git merge origin/$BR
    end
end

function push --argument remote branch
    if test -d .git
        git add -u

        set COMMENT (git diff --shortstat --cached)
        if test -n "$COMMENT"
            echo "Got changes" $COMMENT
            git commit -a -m "No Comment" -m $COMMENT
        else
            echo "No file changes, only sync with origin repo"
        end

        git fetch
        if test -n "$branch"
            git rebase $remote/$branch
            git push $remote $branch
        else if test -n "$remote"
            git rebase origin/$remote
            git push origin $remote
        else
            set BR (git symbolic-ref --short -q HEAD)
            git rebase origin/$BR
            git push origin $BR
        end
    else
        set_color --bold red
        echo "这不是一个git代码库:" $PWD
        set_color normal
    end
end

function merge --argument branch
    git merge --ff $branch
end
