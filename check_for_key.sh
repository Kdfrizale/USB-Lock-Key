#!/bin/bash

##Variable file is the location of the mount point of the thumb drive with the key-file on it
##the contents DO NOT matter, but the name of the file must be exact
file="/mnt/usbkey/key_1.passkey"

while true
do
	if [ -f "$file" ]
	then
		echo "$file found."
		#This will execute when the key is inserted
		#add any code you want within this then statement
		#below is an example of what I used
		#python /home/pi/gpio_on.py
		
	else
		echo "$file not found."
		#This will execute when the key is removed
		#add any code you want within this then statement
		#below is an example of what I used
		#python /home/pi/gpio_off.py
		
	fi
	sleep 4 #Sleep an arbitrary number of seconds in order to not consume all the CPU cylces
done &

