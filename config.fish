set fish_greeting ''

function caddy
    sudo /Users/bin/workspace/caddy/caddy -agree -conf /Users/bin/workspace/caddy/Caddyfile -root /var/tmps
end

function github
    cd ~/github
end

function wk
    cd ~/workspace
end

function ll
    ls -a -l $argv
end

function push
    git commit -am "I'm too lazy, nothing left"
    git fetch
    git rebase origin master
    git push origin master
end

function build
    npm run build:$argv
end
