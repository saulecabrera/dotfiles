export ZSH=$HOME/.oh-my-zsh

# Theme Config
ZSH_THEME="spaceship"

SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_DOCKER_SHOW=false
COMPLETION_WAITING_DOTS=true

# Autojump config
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


# Plugins
plugins=(
  git
  zsh-autosuggestions
)

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

# Enable psql via Postgres App
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Souce spaceship theme dir
source "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Enable asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
