
alias vi = nvim
alias ls = lsd

$env.config = {
  show_banner: false,
}

def build_site [] {
    cd /Users/delong/safeline/official/
    let tag = ([(date now | format date "%Y.%m.%d"), '_', (git rev-parse --short HEAD)] | str join)
    echo $tag
    docker build --platform linux/amd64 -t $"safeline-official:($tag)" .
    docker save $"safeline-official:($tag)" | gzip | save -f "official.tar.gz"
    scp official.tar.gz root@47.104.169.169:/tmp
}

# zellij
def start_zellij [] {
  if 'ZELLIJ' not-in ($env | columns) {
    if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
      zellij attach -c
    } else {
      zellij
    }

    if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
      exit
    }
  }
}

start_zellij

# https://github.com/nushell/awesome-nu
