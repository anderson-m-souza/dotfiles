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
# asdf
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/asdf/tool-versions"
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/pip/default-python-packages"
export ASDF_NPM_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/npm/default-npm-packages"
# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
# vagrant
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME/vagrant/aliases"
# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
# rust
export RUSTUP_HOME="$XDG_DATA_HOME/rust/rustup"
export CARGO_HOME="$XDG_DATA_HOME/rust/cargo"

# set neovim as default text editor
export EDITOR='nvim'


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

# startx hidding messages
[[ $(fgconsole 2>/dev/null) == 1 ]] && startx -- vt1 &> /dev/null
. "/home/and/.local/share/rust/cargo/env"
