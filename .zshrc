export DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

autoload -Uz compinit && compinit

for file in "$DOTFILES"/*/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

# Load Angular CLI autocompletion.
source <(ng completion script)
