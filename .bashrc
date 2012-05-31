# Custom Aliases
alias ls='ls -p'
alias grep='grep --color=auto'
alias c='clear'
alias be='bundle exec $*'
alias chrome="open -a 'Google Chrome' $*"
alias rspec='rspec -f doc --color'

# Colorize the Terminal
export PS1="\W: " 
export CLICOLOR=cons25 # syntax colour the shell output
export LSCOLORS="dxfxcxdxbxegedabagacad" # alter the colours a little
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules" # detect node libraries

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# gem open
export GEM_OPEN_EDITOR=vim
