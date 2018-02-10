
# Colorizing terminal from user
#https://unix.stackexchange.com/questions/148/colorizing-your-terminal-and-shell-environment

git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
HOST='\033[02;36m\]\h'; HOST=' '$HOST
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

## alias ##
alias ll="ls -la"
alias sb="source ~/.bashrc"

alias 1="cd ../"
alias 2="cd ../../"
alias 3="cd ../../../"
alias 4="cd ../../../../"

alias ea="vim ~/.bashrc"


