# Path to oh-my-zsh installation.
export ZSH=/home/phil/.oh-my-zsh

ZSH_THEME="nicoulaj" # xiong-chiamiov nicoulaj jonathan terminalparty rkj-repos random

CASE_SENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git vi-mode sudo history-substring-search)

source $ZSH/oh-my-zsh.sh

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

# Needed for autocomplete strange behavior
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# export SSH_KEY_PATH="~/.ssh/rsa_id"

setopt COMPLETE_ALIASES

alias fstart=/home/phil/misc/fstart
alias guitar-pro=/opt/GuitarPro6/GuitarPro
