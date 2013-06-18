#!/bin/bash

PATH=$PATH:~/bin # For Sublime Text 2

# Load aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoredps:ignorespace

export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S  '
export HISTSIZE=10000
export HISTFILESIZE=10000

export EDITOR=/usr/bin/vim
