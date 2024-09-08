#!/bin/bash

# Set the step size for brightness adjustment
STEP=5

# Determine the direction (up or down) based on the argument
if [[ "$1" == "up" ]]; then
    light -A $STEP
elif [[ "$1" == "down" ]]; then
    light -U $STEP
else
    exit 1
fi

