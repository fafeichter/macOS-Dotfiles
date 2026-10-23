#!/usr/bin/env zsh
set -e

DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

echo "==> Creating symlinks..."

mkdir -p "$HOME/.gradle"
mkdir -p "$HOME/.ssh"

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES/git/.gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DOTFILES/java/.testcontainers.properties" "$HOME/.testcontainers.properties"
ln -sf "$DOTFILES/gradle/gradle.properties" "$HOME/.gradle/gradle.properties"
ln -sf "$DOTFILES/ssh/config" "$HOME/.ssh/config"

echo "==> Symlinks creation complete!"