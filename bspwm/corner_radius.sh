#!/bin/sh

# xborder
if [ -x /home/lcaohoanq/xborder/xborders ]; then
	/home/lcaohoanq/xborder/xborders
else
	echo "Error: /home/lcaohoanq/xborder/xborders not found or not executable"
	exit 1
fi
