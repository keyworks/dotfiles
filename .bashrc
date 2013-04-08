# Custom Aliases
alias ls='ls -p'
alias grep='grep --color=auto'
alias c='clear'
alias be='bundle exec $*'
alias chrome="open -a 'Google Chrome' $*"
alias chrome-dev="open -a 'Google Chrome' --args --disable-web-security --allow-file-access-from-files $*"
alias rspec='rspec -f doc --color'

# Colorize the Terminal
export PS1="\W: "
export CLICOLOR=cons25

# editor
export EDITOR=vim
