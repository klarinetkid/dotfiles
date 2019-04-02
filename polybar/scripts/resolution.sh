#!/bin/bash

# get monitor info
line=$(xrandr | grep "$1 connected" )
# remove 'primary' from output
line=${line/primary}
# grep resolution
echo $line | awk -F'[ +]' '{print $3}'
