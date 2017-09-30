#!/bin/sh

cd $CONTROL/tools/atom

echo "Verifying Atom build"
git checkout master --quiet
git pull --quiet
git fetch --tags --quiet

if [[ ! -z "${1+x}" && "$1" == '--beta' ]]; then
	ATOM_VERSION=$(git describe --tags $(git rev-list --tags="*-beta*" --max-count=1))

	if [[ -d "/Applications/Atom-Beta.app" ]]; then
		rm -r /Applications/Atom-Beta.app
	fi
else
	ATOM_VERSION=$(git describe --tags $(git rev-list --tags --max-count=1 --not $(git rev-list --tags="*-beta*" --max-count=1)));

	if [[ -d "/Applications/Atom.app" ]]; then
		rm -r /Applications/Atom.app
	fi
fi

echo "Building Atom"
git checkout $ATOM_VERSION --quiet
echo "Atom:   ${ATOM_VERSION}"
script/build --install
