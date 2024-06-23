#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o noclobber
set -o vi

shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s direxpand
shopt -s dotglob
shopt -s expand_aliases
shopt -s histappend
shopt -s histverify
shopt -s lithist

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias nv='nvim $@'
alias grep='grep --color=auto'
alias rmswap='rm -i $(find $HOME -name "*.swp")'
alias suspend='systemctl suspend'
alias open='xdg-open'
alias glog='git log --all --oneline --decorate --graph'
alias gd='git --git-dir=$HOME/repos/.files/ --work-tree=$HOME $@'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set colored-stats on"
bind "set visible-stats on"
bind "set mark-symlinked-directories on"
bind "set colored-completion-prefix on"
bind "set menu-complete-display-prefix on"

export HISTCONTROL="erasedups:ignorespace"

source /usr/share/doc/pkgfile/command-not-found.bash

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# Created by `pipx` on 2024-06-23 12:02:41
export PATH="$PATH:/home/peco/.local/bin"
