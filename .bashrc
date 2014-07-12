# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:cd:cat:bg:fg:history'
shopt -s cmdhist
PROMPT_COMMAND='history -a'
PATH=$HOME/bin:$PATH

# set the default editor
EDITOR=vim; export EDITOR

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored vs uncolored terminal prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

alias ls='ls --color=auto -X'

alias svim='sudoedit'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ack='ack-grep -i'
ack-vim() {
  (/home/dkaresh/vack.py "$@") | vim -c ":setlocal buftype=nofile" -c ":setlocal bufhidden=hide" -c ":setlocal noswapfile" -
}
alias vack=ack-vim
alias g=ack-vim
find-vim() {
  find . | grep -i "$@" | vim -c /"$@" -c ":setlocal buftype=nofile" -c ":setlocal bufhidden=hide" -c ":setlocal noswapfile" -
}
alias vfind=find-vim
alias f=find-vim

alias tl='tmux list-sessions'
alias ta='tmux attach -t "$@"'
_autocomplete_tmux_attach() {
    local cur opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts=$(tmux ls | awk '{print $1}' | sed 's/://g' | xargs)
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}
complete -F _autocomplete_tmux_attach ta

vim-session() {
  if [ -z "$1" ]; then
    ls -1 ~/vim_sessions/
  else
    vim -S ~/vim_sessions/$1*
  fi
}
complete vim-session # tab completion
alias vs=vim-session

alias pg='cd /home/dkaresh/Documents/pgdev/'
alias pg2='cd /home/dkaresh/Documents/pgdev2/'
alias pg3='cd /home/dkaresh/Documents/pgdev3/'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


export JAVA_HOME=/usr/lib/jvm/jre1.7.0_60

# Make sure it finds the VPN yo!
PATH=$PATH:/opt/vpn:/opt/vagrant/bin

# PATH stuff
PATH=$PATH:/home/dkaresh/tools/trails/bin/unix

# Load mtime at bash start-up
#echo "bashrc mtime: $(stat -c "%Z" ~/.bashrc)" >&2
export BASHRC_MTIME=$(stat -c "%Z" ~/.bashrc)

PROMPT_COMMAND="check_and_reload_bashrc"
check_and_reload_bashrc () {
  if [ "$(stat -c "%Z" ~/.bashrc)" != $BASHRC_MTIME ]; then
    export BASHRC_MTIME="$(stat -c "%Z" ~/.bashrc)"
    echo "bashrc changed. re-sourcing..." >&2
    . ~/.bashrc
  fi
}

