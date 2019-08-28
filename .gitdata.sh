#/bin/bash

# The gitinfo2 hook template
HOOKTMPLT="/usr/share/texmf-dist/doc/latex/gitinfo2/post-xxx-sample.txt"
REPOROOT=$(git rev-parse --show-toplevel)

# Check error code of last command
if (( $? != 0 ))
then
	echo "This directory isn't inside a git repository" >&2
	exit 2
fi

if [[ -e $HOOKTMPLT ]]
then
	cd $REPOROOT
	if [[ ! -e .git ]]; then
		mkdir .git
	fi
	bash $HOOKTMPLT
else
	echo "Git hook not found, please check your latex distribution" >&2
	exit 1
fi
