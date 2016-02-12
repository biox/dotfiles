#!/bin/bash
# Released under GPL3 by Jesse Olson. This check is designed for the Thinkpad T450s - the laptop has two batteries, and I couldn't find a good custom script.

bat0=$(upower -i $(upower -e | grep 'BAT0') | grep "percentage" | awk '{print $2}' | cut -f1 -d%)
bat1=$(upower -i $(upower -e | grep 'BAT1') | grep "percentage" | awk '{print $2}' | cut -f1 -d%)
status=$(acpi | grep 'Battery 1' | awk '{print $3}' | cut -f1 -d,)

# Add them together and divide by two

bat3=$(expr $bat0 + $bat1)

bat4=$(expr $bat3 / 2)

# Change status accordingly

if [ "$bat4" -ge 80 -a "$bat4" -le 100 ]
	then 
		echo "  $bat4 ($status)"
elif [ "$bat4" -ge 60 -a "$bat4" -le 79 ]
	then
		echo "  $bat4 ($status)"
elif [ "$bat4" -ge 40 -a "$bat4" -le 59 ]
	then
		echo "  $bat4 ($status)"
elif [ "$bat4" -ge 20 -a "$bat4" -le 39 ]
	then
		echo "  $bat4 ($status)"
elif [ "$bat4" -ge 0 -a "$bat4" -le 19 ]
	then
		echo "  $bat4 ($status)"
fi
