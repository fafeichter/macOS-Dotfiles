function parse_git_dirty {
  [[ $(git status --short 2> /dev/null | wc -l) -gt 0 ]] && echo " *"
}

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}