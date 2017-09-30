# EDITOR
#
# Open all code in Atom (because it's my preferred editor).
export EDITOR='atom -w'

# HISTORY
#
# Don't put duplicate lines in the history and don't overwrite GNU Midnight
# Commanders setting of `ignorespace` (1) or force ignoredups & ignorespace (2)
# Then set the history max size to 100 (3), alway append to the history file,
# don't override it (4),
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups # 1
export HISTCONTROL=ignoreboth                             # 2
HISTSIZE=100                                              # 3
shopt -s histappend                                       # 4

# WINDOW
#
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ALIASES
#
# List aliases.
alias ll='ls -l'
alias la='ls -lA'
# Shortcut for Git Tower
alias tower='gittower'
# Shortcut for Virtual Box
alias vb='VBoxManage'
# Shortcut for VASSH
alias vp='vassh wp'

# PROMPT
#
# Source prompt helpers.
source $CONTROL/bash/helpers/prompt.sh
# Make prompt pretty.
export PS1='\[\033[01;32m\]\u $(control_git_info)\[\033[01;34m\]$(control_trim_directory_prompt) \[\033[0;37m\]$\[\033[00m\] '

# NAVIGATION
#
# Source navigation helpers.
source $CONTROL/bash/helpers/nav.sh
#
# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi
# Support completion for terminus commands.
source $CONTROL/bash/helpers/terminus.sh
