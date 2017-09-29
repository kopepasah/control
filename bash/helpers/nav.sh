#!/usr/bin/env bash

# Function for setting (set) and going (go) to specific directores within the
# file system.
#
# Usage: `nav set name` to set the directory.
#        `nav go name` to navigate to a set directory.
function nav() {
	# Setup some colors.
	red='\033[0;31m'
	green='\033[0;32m'
	blue='\033[0;34m'
	NC='\033[0m'

	# If the first variable is not used or (TODO) if it is not set or go, throw an error.
	if [ -z $1 ]; then
		echo -e "${red}ERROR:${NC} You must supply either ${green}set${NC} or ${green}go${NC}, followed by the ${blue}name${NC}."
		return
	fi

	name=""

	for arg in $2; do
		if [ ! -z $2 ]; then
			name="$name $arg"
		fi
	done

	name=`echo $name|sed "s/^\s+//; s/\s+$//"`

	if [ "set" == $1 ]; then

		data=`cat ~/.nav-paths 2>/dev/null | egrep -v "^$name\|\:\|\~\|\:\|"`
		data="${data%\\n}"

		pwd=`pwd`

		if [ ! -z "$data" ]; then
			data="$data\n$name|:|~|:|$pwd"
		else
			data="$name|:|~|:|$pwd"
		fi

		echo -en "$data" > ~/.nav-paths

	elif [ "go" == $1 ]; then

		dir=`cat ~/.nav-paths 2>/dev/null | egrep "^$name\|\:\|\~\|\:\|" | sed s/^.*\|:\|~\|:\|//`

		if [ ! -z $dir ]; then
			cd $dir
		else
			echo -e "${red}ERROR:${NC} No directory has been set. Use ${green}nav set name${NC} to set a directory."
		fi
	fi
}
