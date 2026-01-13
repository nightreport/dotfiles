#!/usr/bin/env bash

if pgrep -x wf-recorder
then
	pkill -INT wf-recorder
	filename=$(cat ~/Scripts/.cur_recording)
	rm .cur_recording
	notify-send "Recording ended" "Saved at ~/Videos/${filename}"
	exit
fi
filename=$(date +%Y_%m_%d_%H_%M_%S.mkv)
echo "$filename" > ~/Scripts/.cur_recording
notify-send "Recording started" "$filename"
wf-recorder -a -f ~/Videos/"${filename}"
