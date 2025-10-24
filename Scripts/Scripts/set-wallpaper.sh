#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "Provide an a name of an image."
	echo "Available images: "
	lsd ~/Pictures/ --hyperlink=always	
	exit
elif [ ! -f ~/Pictures/"$1" ]
then
	echo "No such image."
	echo "Available images: "
	lsd ~/Pictures/ --hyperlink=always	
	exit
fi
 hyprctl hyprpaper preload ~/Pictures/"$1" > /dev/null
 hyprctl hyprpaper wallpaper , ~/Pictures/"$1" > /dev/null
cd ~/.config/hypr
rp=$(realpath ~/Pictures/"$1")
echo "preload = $rp" > hyprpaper.conf
echo "wallpaper = , $rp" >>  hyprpaper.conf
hyprctl reload
echo "Wallpaper changed to $1"
