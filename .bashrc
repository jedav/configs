#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'
PS1='[\u@\h \W]\$ '

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

EDITOR=/usr/bin/vim
export EDITOR

export GOPATH=~/Documents/programming/go
export PATH=$PATH:$GOPATH/bin

PATH=~/.cabal/bin/:~/ida-6.6/:$PATH
export PATH

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias skype='xhost +local: && su skype -c skype'
