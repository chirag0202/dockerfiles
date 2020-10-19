#!/usr/bin/bash

HOST=$(sudo docker inspect -f "{{ .Config.Hostname }}" $(docker ps -q))

echo "Displaying the Hostname and ip-address of all the Runing Containers:"
echo -------------------------
echo $HOST | tr ' ' '\n'
echo -------------------------
