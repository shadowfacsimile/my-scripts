#!/bin/bash

echo "
	# gives the terminal properties
	xprop 

	# screensaver off
	xset s off

	# turn off display power management signal
	xset -dpms

	# turn on display power management signal
	xset +dpms"
