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

# Emacs
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"

# PATH
## Ruby gems
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem

# Aliases
## Config git dotfiles alias
alias config='/usr/bin/git --git-dir=$HOME/.config_git/ --work-tree=$HOME'
## General
alias ls='ls --color=auto'
## Text editing
alias e="$EDITOR"
alias v="$VISUAL"
## Git
g() {
    if [[ $# > 0 ]]; then
        git $@
    else
        git status
    fi
}

# TMUX
if [[ -z "$TMUX" ]]; then
    if [[ $(tmux ls | grep "^scratch:" | wc -l) == 0 ]]; then
       tmux new-session -d -s "scratch"
    fi
    session_id=$(date +%Y%m%d%H%M%S)
    tmux new-session -d -t "scratch" -s "scratch_$session_id"
    exec tmux attach-session -t "scratch_$session_id" \; set-option destroy-unattached && exit;
fi
