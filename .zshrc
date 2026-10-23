export DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

for file in "$DOTFILES"/*/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

autoload -Uz compinit && compinit