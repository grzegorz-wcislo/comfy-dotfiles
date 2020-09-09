export ZSH=/usr/share/oh-my-zsh

ZSH_THEME="grzegorz"

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="true"

plugins=(
	bundler
	docker
	ruby
	sudo
	yarn
)

source $ZSH/oh-my-zsh.sh

# == User configuration == #

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Emacs
export ALTERNATE_EDITOR=""
export EDITOR="vim"
export VISUAL="emacsclient -c -a emacs"

# RubyGems
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# Aliases
## Config git dotfiles alias
alias config='/usr/bin/git --git-dir=$HOME/.config_git/ --work-tree=$HOME'
## Test editing
alias e="$EDITOR"
alias v="$VISUAL"
## Cat
alias cat=bat

## Git
g() {
    if [[ $# > 0 ]]; then
        git "$@"
    else
        git status
    fi
}

compdef g=git

# Start tmux scratch on shell start
if [[ -z "$TMUX" ]]; then
    if [[ $(tmux ls | grep "^scratch:" | wc -l) == 0 ]]; then
        tmux new-session -d -s "scratch"
    fi
    session_id=$(date +%Y%m%d%H%M%S)
    tmux new-session -d -t "scratch" -s "scratch_$session_id"
    exec tmux attach-session -t "scratch_$session_id" \; set-option destroy-unattached && exit;
fi

# ASDF-VM
. /home/grzegorz/.asdf/asdf.sh
