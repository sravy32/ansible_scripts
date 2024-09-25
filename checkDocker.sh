#!/bin/sh

#check if docker is running

state=$(systemctl show --property ActiveState docker | awk -F "=" '{print $2}')
if [ $state="active" ]
then
	echo "docker running on $(uname -n)"
else
	echo "docker is $state on $(uname -n)"
	exit 1
fi
