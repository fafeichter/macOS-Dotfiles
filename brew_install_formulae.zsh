#!/usr/bin/env zsh
set -e

DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

brew update

echo "==> Installing packages from Brewfiles..."
find "$DOTFILES/" -name "Brewfile" | while read -r brewfile; do
  dir=$(dirname "$brewfile")
  echo "--------------------------------------------------"
  echo "Processing Brewfile in: $dir"
  echo "--------------------------------------------------"
  brew bundle --file="$brewfile"
done

echo "==> Brew installation and bundling complete!"