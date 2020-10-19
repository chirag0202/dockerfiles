#!/usr/bin/bash

read -p "Enter you DockerHub Account username: " USER
stty -echo
read -p "Enter you DockerHub Account password: " PASS
stty echo
echo
read -p "Enter the name you want to give to your Docker Image: " IMG
read -p "Enter the tag you want to give to your Docker Image: " TAG

#-------------------------------------------------------------------------------------------------

sleep 2s
echo ---------------------------------------------------
echo "       Building Docker Image for Ansible         "
echo ---------------------------------------------------
sleep 2s
if sudo docker images | grep "$USER/$IMG"
then
	echo ---------------------------------------------------
	echo "        Image has been Already Created           "
	echo ---------------------------------------------------
else
	sudo docker build --rm -t $USER/$IMG:$TAG .
fi

#-------------------------------------------------------------------------------------------------

sleep 2s
echo ---------------------------------------------------
echo "         Loging to DockerHub Account             "
echo ---------------------------------------------------
sudo docker login -u $USER -p $PASS

#-------------------------------------------------------------------------------------------------

sleep 2s
echo ---------------------------------------------------
echo "     Pushing the Docker Image to DockerHub       "
echo ---------------------------------------------------
sudo docker push $USER/$IMG:$TAG

#-------------------------------------------------------------------------------------------------

sleep 2s
echo ===================================================
echo "           Image Created Successfully            "
echo ===================================================
