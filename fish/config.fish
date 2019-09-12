fish_vi_key_bindings

# Tomorrow Night Theme
set fish_color_normal dedede
set fish_color_command 7aa6da
set fish_color_quote e78c45
set fish_color_redirection c397d8
set fish_color_end c397d8
set fish_color_error d54e53
set fish_color_param ffffff
set fish_color_comment 999999
set fish_color_match 70c0b1
set fish_color_search_match c397d8
set fish_color_operator 70c0b1
set fish_color_escape 70c0b1
set fish_color_cwd b9ca4a



# asdf ----------------------------
source ~/.asdf/asdf.fish

# PATHS ---------------------------
set -xg GOPATH $HOME
set -xg SCRIPTS_CLI $HOME/src/github.com/Shopify/scripts-cli
set -xg ELIXIR_LANG_SERVER_PATH $HOME/Developer/elixir-ls/release
set -xg EDITOR nvim
set -xg NVM_DIR $HOME/.nvm
set -xg PATH $GOPATH/bin $PATH
set -xg PATH $SCRIPTS_CLI/exe $PATH

# dev -----------------------------
source /opt/dev/dev.fish

# ERL persistent history
set -xg ERL_AFLAGS '-kernel shell_history enabled'

# Other plugins (putting them here in the meantime)
# Theme: l
# asdf
# z
# nvm
