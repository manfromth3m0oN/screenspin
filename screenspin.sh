#!/usr/bin/env bash
POSITIONS=('inverted', 'normal') # left, right, inverted normal
MONITOR=$(xrandr -q | head -n 2 | tail -n 1 | cut -d " " -f1)
XINPUTID=$(xinput list | grep 'AT Translated Set 2 keyboard' | grep -oEi 'id=[0-9][0-9]')

xinput float ${XINPUTID:3:4}

while true; do
	for i in ${POSITIONS[@]}; do
	    xrandr --output $MONITOR --rotate ${i//,/}
	    echo "Beaned"
	    sleep 0.1
	done
done
