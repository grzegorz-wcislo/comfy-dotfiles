#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

# Config git dotfiles alias
alias config='/usr/bin/git --git-dir=/home/grzegorz/.config_git/ --work-tree=/home/grzegorz'
