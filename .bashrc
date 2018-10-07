#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Pretty prompt
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
PS1="\`if [ \$? != 0 ]; then echo $RED; else echo $GREEN; fi\`[\W]\$ $RESET"

# Config git dotfiles alias
alias config='/usr/bin/git --git-dir=$HOME/.config_git/ --work-tree=$HOME'

# Ruby gems
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem

