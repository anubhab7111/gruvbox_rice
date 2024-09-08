#!/bin/bash

# Get the current brightness percentage
brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)
brightness_percentage=$(( brightness * 100 / max_brightness ))


icon=""  # Full sun


# Print the icon and brightness percentage
echo "${icon} ${brightness_percentage}%"

