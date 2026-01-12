#!/usr/bin/env bash

fatal (){
	echo ""
	command echo -n "[" 
	tput setaf 1
	command echo -n "ERR"
	tput setaf 7
	echo " ] Caught SIGNT. Exiting."
	exit 0
}

trap fatal SIGINT

if ! git status &> /dev/null
then
	echo "Not a git directory" >&2
	exit 1
fi

command echo "Suggested:"
git status | rg "(modified:|deleted:)" | cut -d: -f2
command echo -n "To add (default: .): "
read -er file_to_add

if [[ -z $file_to_add ]]
then
	file_to_add="."
fi

git add "$file_to_add"
command echo "[LOG ] git add $file_to_add"

command echo -n "Commit message: "
read -r commit_message

git commit -m "$commit_message"
command echo "[LOG ] git commit -m $commit_message"

command echo -n "Branch to push (default: main): "
read -r branch_name

if [[ -z $branch_name ]]
then
	branch_name="main"
fi

git push origin "$branch_name"
command echo "[LOG ] git push origin $branch_name"

command echo -n "[ "
tput setaf 2
command echo -n "OK"
tput setaf 7
command echo " ] All done."
