#!/bin/sh

TOOLS=(nvm phpcs terminus vvv wpcs)

for i in "${TOOLS[@]}"
do
	cd $CONTROL/tools/$i

	git checkout master --quiet
	git pull --quiet
	git fetch --tags --quiet

	LATEST=$(git describe --tags $(git rev-list --tags --max-count=1))

	git checkout $LATEST --quiet
	echo "$i => $LATEST"
done

cd $CONTROL

STATUS=$(git status --porcelain)

if [ -z "$STATUS" ]; then
	echo "No tools to update."
	exit 0
else
	git add tools
	git commit -m "Update tools to latest tag."

	if [[ "$STATUS" == *tools/terminus* ]]; then
		echo "Terminus was updated, so we need to update Composer dependencies"
		cd $CONTROL/tools/terminus
		composer update
		git checkout composer.lock
		echo "Update complete"
	fi

	exit 0
fi
