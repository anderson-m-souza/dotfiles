# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# xdg evironment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# organizing ~/
export HISTFILE="$XDG_STATE_HOME/bash/history"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_CONFIG_HOME/password-store"
export WHEN_CONFIG_HOME="$HOME/.config/when"
# change ~/.java to ~/.config/java (not working)
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSHISTFILE=-
export PLTUSERHOME="$XDG_DATA_HOME/racket"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export PIPEWIRE_CONFIG_DIR="$XDG_CONFIG_HOME/pipewire"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"

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

