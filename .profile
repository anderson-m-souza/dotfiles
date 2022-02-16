# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.


# XDG ENVIRONMENT VARIABLES

# config
export XDG_CONFIG_HOME="$HOME/.config"
# cache
export XDG_CACHE_HOME="$HOME/.cache"
# data
export XDG_DATA_HOME="$HOME/.local/share"
# state
export XDG_STATE_HOME="$HOME/.local/state"


# ORGANIZING ~/

# bash history file
export HISTFILE="$XDG_STATE_HOME/bash/history"
# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
# when
export WHEN_CONFIG_HOME="$HOME/.config/when"
# change ~/.java to $XDG_CONFIG_HOME/java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
# less history file
export LESSHISTFILE=-
# wget
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
# change ~/.python_history to $XDG_STATE_HOME/python/history
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"
# vim
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
# xinit
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# xserver
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
# xauthority
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
# postgresql
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# set vim as default text editor
export EDITOR='vim'


# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

