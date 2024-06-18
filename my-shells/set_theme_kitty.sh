#!/bin/bash

# Path to kitty.conf
KITTY_CONF="$HOME/.config/kitty/kitty.conf"
THEMES_DIR="$HOME/.config/kitty/kitty-themes/themes"

# Check if the theme name is provided as an argument
if [[ -z "$1" ]]; then
	echo "Usage: $0 <theme-name>"
	echo "Example: $0 Dracula"
	exit 1
fi

# Extract theme name from the argument
THEME_NAME="$1"
THEME_FILE="$THEMES_DIR/$THEME_NAME.conf"

# Check if kitty.conf exists
if [[ ! -f "$KITTY_CONF" ]]; then
	echo "Error: kitty.conf not found at $KITTY_CONF"
	exit 1
fi

# Check if the theme file exists
if [[ ! -f "$THEME_FILE" ]]; then
	echo "Error: Theme file not found at $THEME_FILE"
	exit 1
fi

# Update the include line in kitty.conf
if grep -q "^include $THEMES_DIR/" "$KITTY_CONF"; then
	sed -i "s|^include $THEMES_DIR/.*|include $THEME_FILE|" "$KITTY_CONF"
	echo "Success: Theme changed to $THEME_NAME in $KITTY_CONF"
else
	# If no include line is found, append the new include line
	echo "include $THEME_FILE" >>"$KITTY_CONF"
	echo "Success: Theme $THEME_NAME added to $KITTY_CONF"
fi
