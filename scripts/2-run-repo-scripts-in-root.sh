#! /bin/bash

sudo apt install -y unzip 
unzip -o AwsConfigAll.zip

cd ${HOME}

./get-jsobjects
./ssh-setup
cd Git
./get-repos.sh   
