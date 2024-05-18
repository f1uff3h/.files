# .files

## From scratch
```sh
git init --bare $HOME/repos/.files/
alias gd='git --git-dir=$HOME/repos/.files/ --work-tree=$HOME'
gd config --local status.showUntrackedFiles no
```

## Clone
```sh
git clone --bare git@github.com:f1uff3h/.files.git $HOME/repos/.files/
alias gd='git --git-dir=$HOME/repos/.files/ --work-tree=$HOME'
gd checkout 2>&1 | awk '/\s+\./{print $1}' | xargs -I{} rm -rf {}
gd checkout
```
