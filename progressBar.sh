#!/bin/bash
#
# Progress Bar 
# Created: 07 Feb 2021
# Author:  George Nikolaidis
# mail:    gnlinuz@yahoo.com
# version: 1.00
# Description: progress bar untill process finish 
#
# "▇";
# '\u2589

clear
tput civis	# turn off the cursor

pBar()
{
sleepTime=$1
while ps |grep $! &>/dev/null; do	# wait until the latest process created is finished
        printf "%s" "▇"
        sleep ${sleepTime}
done
printf "%s\n"
}

sleep 20 &>/dev/null &	# emulated a process 
pBar 1			# call function with val 1
tput cnorm		# turn back on the cursor

# END
