#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"

PS1="\`if [ \$? != 0 ]; then echo $RED; fi\`[\W]\$ $RESET"

# Config git dotfiles alias
alias config='/usr/bin/git --git-dir=/home/grzegorz/.config_git/ --work-tree=/home/grzegorz'
