#! /bin/bash

sudo apt update
sudo apt upgrade -y

# Reboot
echo -e "sudo reboot now"
echo "sudo reboot now" > reboot.sh
chmod +x reboot.sh
echo "reboot is ./reboot.sh"

# JSOBjects
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects > get-jsobjects
chmod +x get-jsobjects
echo "JsOobjects is ./get-js-objects"

# SSH Setup
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/ssh-setup > ssh-setup
chmod +x ssh-setup
echo "ssh-setup is ./ssh-setup"

## Repo Setup
GIT=/home/ubuntu/Git

if [ ! -d "$GIT" ]; then
    mkdir $GIT
fi

cd $GIT

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos.sh

chmod +x get-repos
# ./get-repos
echo "get-repos is ./Git/get-repos.sh"
