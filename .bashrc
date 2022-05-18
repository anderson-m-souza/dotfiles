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

PS1='> '

if [ -f "$XDG_CONFIG_HOME/bash/aliases" ]; then
    . "$XDG_CONFIG_HOME/bash/aliases"
fi

# asdf setup
. /opt/asdf-vm/asdf.sh
. "/home/and/.local/share/rust/cargo/env"
