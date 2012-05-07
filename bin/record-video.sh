#!/bin/sh

rm -f $1
ffmpeg -s 320x240 -f video4linux2 -i /dev/video0 -isync -vcodec libvpx -vb 768000 -r 10 -vsync 1 -f alsa -ac 1 -f webm $1 -vframes 50
