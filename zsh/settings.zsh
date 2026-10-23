export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export CLICOLOR=1
export LSCOLORS=GxFxCxDxbxegedabagaced

export PROMPT='%B%F{201}%n%b%F{250}@%F{reset}%m:%B%F{yellow}%~%F{reset}%b%B%F{green}$(parse_git_branch)%F{reset}%b %B%F{250}$%F{reset}%b '

export HISTFILE="${HISTFILE:-$HOME/.zsh_history}"
export HISTSIZE=50000
export SAVEHIST=50000

setopt noautomenu
setopt PROMPT_SUBST
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS