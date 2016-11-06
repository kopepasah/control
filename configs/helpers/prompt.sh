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

# If we are working in the www directory, trim the output to only display from
# that directory up.
function control_trim_directory_prompt() {
	path=${PWD}
	tail=${PWD##*/}

	# First we shoud set the output and trim the user base locality.
	output=${path/$HOME/\~}

	if [[ ${tail} != "www" && ${output} == *"Developer/WordPress/VVV"* ]]; then
		output=${output/Developer\/WordPress\/VVV\/www/...}
	fi

	echo -e ${output}
}
