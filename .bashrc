# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias vi='vim'
alias ll='ls -lFh'
alias la='ls -AlFh'
alias grep='grep --color'
export TERM=xterm-256color
export PS1="[\u@\h \W]\$ "
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"
