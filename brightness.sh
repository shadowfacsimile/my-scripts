#!/bin/bash

if echo $1 > /sys/class/backlight/intel_backlight/brightness; then
	echo "Brightness is now set to $1"
else
	echo "Brightness value should be between 0 and 4882"
fi
