#!/bin/sh

#check if container is running

containername="webserver"
check_name=$(docker ps --filter "name=$containername" --format '{{.Names}}')
if [ $check_name==$containername ]
then
	echo "container name: $containername exits"
else
	echo "container name: $containername does not exist"
	exit 1
fi
