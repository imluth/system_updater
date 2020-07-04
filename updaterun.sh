#!/bin/bash

#Purpose: get system information & update system
#Written: looth

#greeting
echo
echo -n "Please enter your name: "
read name
echo
echo "Hello, $name. Welcome to the system:"
echo

#system date
echo "Current System Date:"
date
echo

#disk space
echo "Current Disk Usage:"
df -h | egrep 'sda1|sda6'
echo

#OS version
echo "Operating System Information:"
neofetch
echo

#updating system
read -p "Do you want update the system? " ANS


if [[ "$ANS" == yes ]]
then
	echo "Updating System"
apt-get update
else
	echo "Updated Aborted, exiting.."
fi

echo

#closing
echo "Thank you, goodbye."
