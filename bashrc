# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias lf='ls -F --color=auto'
alias ll='ls -lF --color=auto'
alias la='ls -laF --color=auto'

alias eng='LANG=C LANGUAGE=C LC_ALL=C'
alias jajp='LANG=ja_JP'

alias pd=pushd
alias pp=popd

alias view="/usr/bin/vim -R"
alias viutf="jajp vi +'set encoding=utf-8 fileencoding=utf-8'"

# for git
source ~/.git-completion.bash

# user file-creation mask
umask 007

if [ "$SSH_CONNECTION" = "" ]; then
	# This is for Exceed OnDemand which cannot handle escape sequences
	PS1="[\u@\h \W]$ "
else
	PS1="\[\033[0;36m\][\u@\h \W]$ \[\033[0m\]"
fi

set noclobber

function psgrep {
  pattern=$1
  grep=/bin/egrep

  ps -ef | $grep "PID|$pattern"
}

#[EOF]
