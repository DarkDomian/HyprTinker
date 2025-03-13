#!/bin/bash

# Initialize swww daemon
swww-daemon

# Set wallpaper with a smooth transition
swww img {$(find ~/Projects/wallpaper -type f | shuf -n 1)}
