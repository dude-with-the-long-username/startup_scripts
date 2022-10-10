#!/bin/sh

konsole &
sleep 3 &&
xdotool type "python /home/fiona/Projects/startup_scripts/profile_selector.py"; xdotool key Return