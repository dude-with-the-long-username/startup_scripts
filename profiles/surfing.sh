#!/bin/sh
# open apps to when you're in the mood for surfing the internet

konsole & # `&` executes next line even if previous command hasn't finished executing
firefox & 
sleep 2 && # `&&` executes next line only if previous command has finished executing
wmctrl -s 1 && # move to virtual desktop 2 (Desktop numbering starts at 0)
# ytmdesktop 1>/dev/null 2>/dev/null &  # writing output to /dev/null file because ytmdesktop returns song name to terminal every time a new song plays
flatpak run app.ytmdesktop.ytmdesktop
sleep 2 && 
wmctrl -s 0 # move to virtual desktop 1
# && wmctrl -r :ACTIVE: -t 1; wmctrl -s 1