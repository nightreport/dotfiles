#!/usr/bin/env bash

image_name=$1

change_image(){
	hyprctl hyprpaper preload ~/Pictures/"$image_name" > /dev/null
	hyprctl hyprpaper wallpaper , ~/Pictures/"$image_name" > /dev/null

	command echo "[LOG ] hyprctl hyprpaper preload ~/Pictures/""$image_name"
	command echo "[LOG ] hyprctl hyprpaper wallpaper , ~/Pictures/""$image_name"

	cd ~/.config/hypr || exit
	rp=$(realpath ~/Pictures/"$image_name")
	echo "preload = $rp" > hyprpaper.conf
	echo "wallpaper = , $rp" >>  hyprpaper.conf
	hyprctl reload > /dev/null
	echo "[LOG ] Wallpaper changed to $image_name"
	command echo -n "[ "
	tput setaf 2
	command echo -n "OK"
	tput setaf 7
	command echo " ] All done."
}

if [ $# -eq 0 ]; then
	echo "Provide an a name of an image."
	echo "Available images: "
	lsd ~/Pictures/ --hyperlink=always	
	cd ~/Pictures/ || exit 1
	command echo -ne "Enter image name: "
	read -er image_name
fi
if [ ! -f ~/Pictures/"$image_name" ]; then
	echo "Image not found"
	exit 1
fi

change_image
