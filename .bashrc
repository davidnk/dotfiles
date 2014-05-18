shopt -s histappend
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:cd:cat:bg:fg:history'
shopt -s cmdhist
PROMPT_COMMAND='history -a'
PATH=$HOME/bin:$PATH
PATH=/sbin:$PATH

EDITOR=vim; export EDITOR
alias svim='sudoedit'

alias ls='ls --color -X'

alias ack='ack-grep -i'
ack-vim() {
  ack-grep -i "$@" > /tmp/recent_ack
  vim /tmp/recent_ack  -c /"$@" -c ":setlocal buftype=nofile" -c ":setlocal bufhidden=hide" -c ":setlocal noswapfile"
}
alias vack=ack-vim

find-vim() {
  find . | grep -i "$@" > /tmp/recent_find
  vim /tmp/recent_find -c /"$@" -c ":setlocal buftype=nofile" -c ":setlocal bufhidden=hide" -c ":setlocal noswapfile"
}
alias vfind=find-vim

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
