#!/usr/bin/env bash

# First setup a function to get the current git output, it we are on a git
# repository, the set the pretty prompt.
function control_git_info() {
	color=""

	# If directory is not clean color output red, otherwise color output green.
	if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]]; then
		color="\033[01;31m"
	else
		color="\033[01;33m"
	fi

	if [[ $(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/") == *"detached"* ]]; then
		OUT="$(git describe --tags 2> /dev/null)";
	else
		OUT="$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/")";
	fi

	if [ "$OUT" != "" ]; then
		echo -e "${color}"$OUT" "
	fi
}

# Trim directory up to tail if we are in a .git repository.
function control_trim_directory_prompt() {
	if [ -z "$(git status 2> /dev/null)" ]; then
		echo -e ${PWD/$HOME/\~}
	else
		if [ -f "$PWD/.git/index" ] || [ -f "$PWD/.git" ]; then
			if [ ${PWD/$HOME\//} == ${PWD##*/} ]; then
				echo -e "~/${PWD##*/}"
			else
				echo -e "../${PWD##*/}"
			fi
		else
			REPO=$(git rev-parse --show-toplevel)
			echo -e "../"${REPO##*/}${PWD/$REPO/}
		fi
	fi
}
