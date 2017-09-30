#!/bin/sh

CONFIGS=(.bash_profile .bashrc .inputrc .vimrc)

for i in "${CONFIGS[@]}"
do
	if [[ -f $HOME/$i ]]; then
		rm $HOME/$i
	fi

	ln -s $CONTROL/configs/$i $HOME/$i
done
