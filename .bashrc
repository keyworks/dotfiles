alias grep='grep --color=auto'

dshall () {
    usage="$0 group cmd"
    [ -z "$1" ] && echo $usage && return 1
    [ -z "$2" ] && echo $usage && return 1
    dsh -r ssh -o "-o ConnectTimeout=10" -o "-o CheckHostIP=no" -o "-o StrictHostKeyChecking=no" -M -c -m $(fh -c $1) "$2"
}

dshone () {
    usage="$0 group cmd"
    [ -z "$1" ] && echo $usage && return 1
    [ -z "$2" ] && echo $usage && return 1
    dsh -r ssh -o "-o ConnectTimeout=10" -o "-o CheckHostIP=no" -o "-o StrictHostKeyChecking=no" -M -c -m $(fh -h $1 | head -n 1) "$2"
}

git-delete-branches () {
  branches=$(git for-each-ref --format='%(refname:short)' refs/heads/** | grep $1)
  if [[ -z $branches ]]; then
    echo "No branches to delete. Exiting..."
    return 1
  fi
  echo $branches | xargs -n1
  read -p "Are you sure you want to delete the above branches? [y/n] " -r
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    git branch -D $branches
  else
    echo "Skipping deletion..."
    return 1
  fi
}

bashman () { man bash | less -p "^       $1 "; }

YELLOW="\[\033[0;33m\]"
YELLOW_BOLD="\[\033[1;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1

export CLICOLOR=1
export EDITOR=code
export PINLOG_LOG_TO_STDERR=1
export PATH=/usr/local/sbin:$PATH

source ~/.git-completion.bash
source ~/.git-prompt.sh

function env_folder () {
  if [[ -n $VIRTUAL_ENV ]]
  then echo "(${VIRTUAL_ENV##*/}) "
  else echo ""
  fi
}
PROMPT_COMMAND='__git_ps1 "$GREEN$(env_folder)$YELLOW\u@\h $YELLOW_BOLD\W$NO_COLOR" " $YELLOW_BOLD\\\$ $NO_COLOR"'

export BASH_SILENCE_DEPRECATION_WARNING=1

node-debugger-ssh-tunnel() {
  ssh -L 9229:localhost:9229 devapp
}
