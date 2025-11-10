#!/usr/bin/env bash

image_name=$1

change_image(){
	hyprctl hyprpaper preload ~/Pictures/"$image_name" > /dev/null
	hyprctl hyprpaper wallpaper , ~/Pictures/"$image_name" > /dev/null

	cd ~/.config/hypr || exit
	rp=$(realpath ~/Pictures/"$image_name")
	echo "preload = $rp" > hyprpaper.conf
	echo "wallpaper = , $rp" >>  hyprpaper.conf
	hyprctl reload
	echo "Wallpaper changed to $image_name"
}

if [ $# -eq 0 ]; then
	echo "Provide an a name of an image."
	echo "Available images: "
	lsd ~/Pictures/ --hyperlink=always	
	cd ~/Pictures/ || exit 1
	read -er image_name
fi
if [ ! -f ~/Pictures/"$image_name" ]; then
	echo "Image not found"
	exit 1
fi

change_image
