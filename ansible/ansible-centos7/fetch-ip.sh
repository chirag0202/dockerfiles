#!/usr/bin/bash

IP=$(sudo docker inspect -f "{{ .NetworkSettings.IPAddress }}" $(docker ps -q))

echo "Displaying the ip-address of all the Runing Containers:"
echo -------------------------
echo $IP | tr ' ' '\n'
echo -------------------------
