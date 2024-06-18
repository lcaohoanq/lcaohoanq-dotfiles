#!/bin/sh

# xborder
if [ -x /home/lcaohoanq/xborder/xborders ]; then
	/home/lcaohoanq/xborder/xborders
	# /home/lcaohoanq/xborder/xborders --border-rgba '#059212'
else
	echo "Error: /home/lcaohoanq/xborder/xborders not found or not executable"
	exit 1
fi
