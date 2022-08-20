# open apps to when you're in the mood for coding

konsole & # `&` executes next line even if previous command hasn't finished executing
firefox & 
sleep 2 && # `&&` executes next line only if previous command has finished executing
wmctrl -s 1 && # move to virtual desktop 2 (Desktop numbering starts at 0)
joplin &
code &
sleep 2 &&
wmctrl -s 2 &&
ytmdesktop &
sleep 2 && 
wmctrl -s 0 # move to virtual desktop 1
# && wmctrl -r :ACTIVE: -t 1; wmctrl -s 1