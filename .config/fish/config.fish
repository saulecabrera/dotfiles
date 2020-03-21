# Only perform vim keybindings when
# the terminal is interactive to
# silence warnings in emacs shell for example

if status is-interactive
  fish_vi_key_bindings
end

set theme_color_scheme solarized-light
set -g theme_nerd_fonts no
set -g theme_display_date no

set fish_color_command 268bd2
set fish_color_autosuggestion 839496

# asdf ----------------------------
source ~/.asdf/asdf.fish

# PATHS ---------------------------
set -xg GOPATH $HOME
set -xg SHOPIFY_TEMP_CLI $HOME/src/github.com/Shopify/temp-shopify-app-cli
set -xg ELIXIR_LANG_SERVER_PATH $HOME/Developer/elixir-ls/release
set -xg EDITOR emacs -nw
set -xg NVM_DIR $HOME/.nvm
set -xg PATH $GOPATH/bin $PATH
set -xg PATH $SHOPIFY_TEMP_CLI/bin $PATH

# dev -----------------------------
source /opt/dev/dev.fish

# ERL persistent history
set -xg ERL_AFLAGS '-kernel shell_history enabled'

# Other plugins (putting them here in the meantime)
# Theme: l
# asdf
# z
# nvm
