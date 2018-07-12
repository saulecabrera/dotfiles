export ZSH=$HOME/.oh-my-zsh


# Plugins
plugins=(
  git
  zsh-autosuggestions
)

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'

# Aliases
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"
alias dot="nvim $HOME/Developer/dotfiles"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zshr="source ~/.zshrc"
alias current_br="git rev-parse --abbrev-ref HEAD"

# Git aliases are added under $HOME/.gitconfig

# Enable asdf
autoload -Uz compinit
compinit

export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
