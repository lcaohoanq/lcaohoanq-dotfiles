#!/bin/sh

# Path to the image directory
IMAGE_DIR="/media/lcaohoanq/MULTIMEDIA/graphics/wallpaper"

# Check if the image name is provided as an argument
if [ -z "$1" ]; then
	echo "Usage: $0 <image-name>"
	echo "Example: $0 wallhaven-bar123.png"
	exit 1
fi

# Extract image name from the argument
IMAGE_NAME="$1"
IMAGE_PATH="$IMAGE_DIR/$IMAGE_NAME"

# Check if the image file exists
if [ ! -f "$IMAGE_PATH" ]; then
	echo "Error: Image file not found at $IMAGE_PATH"
	exit 1
fi

# Update the background image line in the script
sed -i "s|^feh --bg-scale .*|feh --bg-scale $IMAGE_PATH|" "$HOME/.config/bspwm/set_background.sh"

echo "Success: Background image changed to $IMAGE_NAME\nPlease reloadbspwm to see changes"
