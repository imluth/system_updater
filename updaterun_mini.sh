#!/bin/bash

#updating system
read -p "Do you want update the system? " ANS


if [[ "$ANS" == yes ]]
then
	echo "updating system"
apt-get update
else
	echo "aborted"
fi
