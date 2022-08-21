#!/bin/sh

konsole &
sleep 2 &&
xdotool type "python /home/fiona/Projects/startup_scripts/startup_scripts.py"; xdotool key Return