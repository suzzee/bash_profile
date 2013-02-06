function parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="[\033[0;31m\]]"
YELLOW="[\033[0;313\]]"
GREEN="[\033[0;32m\]]"
NO_COLOUR="[\033[0m\]]"

PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
alias cdd='cd [filepath]' #edit filepath to real path.
alias cdg='cd [filepath]'
