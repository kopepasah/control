#!/usr/bin/env bash
#
# Bash Profile

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PATH=$PATH:$HOME/bin:usr/local/git:/sbin:/bin:/usr/bin:/usr/sbin:/usr/local/lib:/usr/local/sbin:/usr/bin/git:/usr/local/git/bin:/usr/local/git/bin/git

# Set Control path. This can be overridden in the local .profile config.
export CONTROL=$HOME/.control

# Local configurations may differ, so let's source a local profile here.
if [ -f $HOME/.profile ]; then
	source $HOME/.profile
fi

if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
fi

export PATH="$PATH:$CONTROL/tools/terminus/bin"
export PATH="$PATH:$CONTROL/tools/vassh"
export PATH="$PATH:$CONTROL/tools/passage"

export TERMINUS_PLUGINS_DIR="$CONTROL/dynamic/terminus/plugins"
export VVV_SKIP_LOGO=true
