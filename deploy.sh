#!/bin/sh

# Stop, if a command fails
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Building the project
hugo
cd public

# Git adding, commiting and pushing

git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]
then
	msg="$*"
fi

git commit -am "$msg"
git push origin master

