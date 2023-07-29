
# some more ls aliases:
alias ll='ls -l'
alias la='ls -A'

alias e='exit'

alias fox='firefox & exit'
alias pal='palemoon & exit'
alias palp='palemoon --private-window & exit'
alias foxp='firefox --private-window & exit'

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
