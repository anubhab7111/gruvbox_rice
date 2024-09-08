#!/bin/bash

# Get screen resolution
resolution=$(xdpyinfo | grep dimensions | awk '{print $2}')
screen_width=$(echo $resolution | cut -d 'x' -f 1)
screen_height=$(echo $resolution | cut -d 'x' -f 2)

# Calculate the center of the screen
center_x=$((screen_width / 2))
center_y=$((screen_height / 2))

# Calculate the offset for the text inside the ring
time_offset_x=$((center_x + 570))
time_offset_y=$((center_y))

# Lock screen with centered time in ring and Gruvbox colors
i3lock -f -i ~/Pictures/wallpaper/lock-Screen.png \
--clock \
--time-pos="${time_offset_x}:$(($time_offset_y + 5))" \
--date-pos="${time_offset_x}:$(($time_offset_y + 60))" \
--time-color=ebdbb2ff \
--date-color=ebdbb2ff \
--time-size=96 \
--date-size=48 \
--time-font="Hack" \
--date-font="Hack" \
--inside-color=282828ff \
--ring-color=#b5be87 \
--line-color=#c84c30 \
--separator-color=282828ff \
--verif-color=98971aff \
--wrong-color=cc241dff \
--verif-text="Verifying..." \
--wrong-text="Wrong!" \
--noinput-text="No Input" \
--lock-text="Locking..." \
--lockfailed-text="Lock Failed" \
--ringver-color=98971aff \
--ringwrong-color=cc241dff \
--keyhl-color=d65d0eff \
--bshl-color=cc241dff \
--insidever-color=282828ff \
--insidewrong-color=282828ff \
--ind-pos="$((center_x - 800)):$((center_y))" \
--radius=100 \
--ring-width=10 \
--line-uses-inside \
--force-clock

