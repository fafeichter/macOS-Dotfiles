# Define Dotfiles Root Directory
export DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

# Initialised once, up front, so every topic file can safely use `compdef` /
# `source <(... completion ...)` (e.g. nodejs/env.zsh) regardless of load order.
autoload -Uz compinit && compinit

# Source all environment variables
for file in "$DOTFILES"/*/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done