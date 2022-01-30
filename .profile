# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


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
# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
# when
export WHEN_CONFIG_HOME="$HOME/.config/when"
# change ~/.java to $XDG_CONFIG_HOME/java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
# less history file
export LESSHISTFILE=-
# dr racket
export PLTUSERHOME="$XDG_DATA_HOME/racket"
# wget
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
# pipewire
export PIPEWIRE_CONFIG_DIR="$XDG_CONFIG_HOME/pipewire"
# change ~/.python_history to $XDG_STATE_HOME/python/history
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"
# postgresql
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"


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

