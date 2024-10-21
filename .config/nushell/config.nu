$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup
}

def rmswap [] { fd -H .*.sw[p|o]$ $env.HOME | xargs -I{} rm -rf {}}
# def lt [] {
#   plasma-apply-lookandfeel -a org.kde.breeze.desktop
#   sed -i 's/mocha/latte/' $"($env.HOME)/.config/alacritty/alacritty.toml"
# }
# def dt [] {
#   plasma-apply-lookandfeel -a org.kde.breezedark.desktop
#   sed -i 's/latte/mocha/' $"($env.HOME)/.config/alacritty/alacritty.toml"
# }

alias nv = nvim
alias ll = ls -ls
alias la = ls -la
alias glog = git log --all --oneline --decorate --swap_graph
alias gl = git log --all --oneline -n 4
alias gd = git $"--git-dir=($env.HOME)/repos/.files" $"--work-tree=($env.HOME)"
alias tfdev = podman container run -it -v tf-nu:/root/.config/nushell -v tf-nv:/root/.local/share/nvim -v persist-z:/root/.local/share/zoxide -v copilot:/root/.config/github-copilot -v $'($env.HOME)/repos/.init/:/init' -v $'($env.HOME)/.ssh/:/root/.ssh:ro' -v $'($env.HOME)/.gitconfig:/root/.gitconfig:ro' -v ./:/workspace tfdev nu
alias iacdev = podman container run -it -v iac-nu:/root/.config/nushell -v iac-nv:/root/.local/share/nvim -v persist-z:/root/.local/share/zoxide -v copilot:/root/.config/github-copilot -v $'($env.HOME)/repos/.init/:/init' -v $'($env.HOME)/.ssh/:/root/.ssh:ro' -v $'($env.HOME)/.gitconfig:/root/.gitconfig:ro' -v ./:/workspace iacdev nu
alias godev = podman container run -it -v go-nu:/root/.config/nushell -v go-nv:/root/.local/share/nvim -v persist-z:/root/.local/share/zoxide -v copilot:/root/.config/github-copilot -v $'($env.HOME)/repos/.init/:/init' -v $'($env.HOME)/.ssh/:/root/.ssh:ro' -v $'($env.HOME)/.gitconfig:/root/.gitconfig:ro' -v ./:/workspace godev:1.23_01 nu

source ~/.cache/zoxide/init.nu
use ~/.cache/starship/init.nu
