#!/usr/bin/env bash

command echo -n "To add: "
read -r file_to_add

git add "$file_to_add"
command echo "git add $file_to_add"

command echo -n "Commit message: "
read -r commit_message

git commit -m "$commit_message"
command echo "git commit -m $commit_message"

command echo -n "Branch to push (default: main): "
read -r branch_name

if [[ -z $branch_name ]]
then
	branch_name="main"
fi

git push origin "$branch_name"
