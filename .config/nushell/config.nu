$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup
}

def rmswap [] { fd -H .*.sw[p|o]$ $env.HOME | xargs -I{} rm -rf {}}
def lt [] {
  sed -i 's/moon/day/' $"($env.HOME)/.config/alacritty/alacritty.toml"
}
def dt [] {
  sed -i 's/day/moon/' $"($env.HOME)/.config/alacritty/alacritty.toml"
}

alias nv = nvim
alias ll = ls -ls
alias la = ls -la
alias glog = git log --all --oneline --decorate --swap_graph
alias gl = git log --all --oneline -n 4
alias gd = git $"--git-dir=($env.HOME)/repos/.files" $"--work-tree=($env.HOME)"
alias t = terraform
alias k = kubectl
alias h = helm

source ~/.cache/zoxide/zoxide.nu
use ~/.cache/starship/init.nu
