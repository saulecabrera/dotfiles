export ZSH=$HOME/.oh-my-zsh

# ---------- ZSH -----------
plugins=(
  git
  vi-mode
)

ZSH_THEME="sunrise"
source $ZSH/oh-my-zsh.sh

# --------------------------

for file in ~/.{exports,functions,aliases}; do
  [ -f "$file" ] && source "$file";
done;


# --------- ASDF -------------------
autoload -Uz compinit
compinit
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
# -----------------------------------



# --------- NVM ---------------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# -----------------------------------

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
