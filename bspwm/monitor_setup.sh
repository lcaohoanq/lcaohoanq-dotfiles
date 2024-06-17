#!/bin/sh

# Configure monitors with bottom edges aligned
# Set DP-1-8 as primary and configure its resolution and position
xrandr --output DP-1-8 --primary --mode 1920x1080 --pos 0x0 --rotate normal

# Configure HDMI-1 with its resolution and position relative to DP-1-8
xrandr --output HDMI-1-4 --mode 1366x768 --pos 1920x0 --rotate normal
