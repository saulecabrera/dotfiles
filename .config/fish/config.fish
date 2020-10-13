# Only perform vim keybindings when
# the terminal is interactive to
# silence warnings in emacs shell for example

if status is-interactive
  fish_vi_key_bindings
end

set theme_color_scheme gruvbox
set -g theme_nerd_fonts no
set -g theme_powerline_fonts no
set -g theme_display_date no

# asdf ----------------------------
source ~/.asdf/asdf.fish

# PATHS ---------------------------
set -xg GOPATH $HOME
set -xg ELIXIR_LANG_SERVER_PATH $HOME/Developer/elixir-ls/release
set -xg EDITOR nvim
set -xg NVM_DIR $HOME/.nvm
set -xg PATH $GOPATH/bin $PATH
set -xg BAT_THEME ansi-dark

alias vim="nvim"
alias gcbr="git rev-parse --abbrev-ref HEAD"
alias t="tmuxinator"

# dev -----------------------------
source /opt/dev/dev.fish

# ERL persistent history
set -xg ERL_AFLAGS '-kernel shell_history enabled'

# Other plugins (putting them here in the meantime)
# Theme: l
# asdf
# z
# nvm

# opam configuration
source /Users/saulecabrera/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/saulecabrera/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/saulecabrera/.ghcup/bin $PATH
