# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Prompt
bblue="\[\033[01;34m\]"
bgreen="\[\033[01;32m\]"
yellow="\[\033[00;33m\]"
reset="\[\033[00;00m\]"
PS1="${yellow}┌⎯⎯(${bgreen}\u@\h${yellow})⎯[${bblue}\w${yellow}]\n${yellow}└⎯${bgreen}\$${reset} "
PROMPT_COMMAND="export PROMPT_COMMAND=echo"
alias clear="clear; export PROMPT_COMMAND='export PROMPT_COMMAND='echo''"

if [ -f "$XDG_CONFIG_HOME/bash/aliases" ]; then
    . "$XDG_CONFIG_HOME/bash/aliases"
fi

