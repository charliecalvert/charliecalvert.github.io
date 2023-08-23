#! /bin/bash

# For used in a new virtual machine, or new Linux installation.
# This script creates the scripts that are used to clone
# frequently used repositories.
# It also reboots the machine and creates the script that is used
# to get the JsObjects repo.


sudo apt update
sudo apt upgrade -y

GIT_HOME=${HOME}/Git
REBOOT=${HOME}/reboot.sh
GET_JSOBJECTS=${HOME}/get-jsobjects.sh
SSH_SETUP=${HOME}/ssh-setup.sh
GET_REPOS=${GIT_HOME}/get-repos.sh

if [ ! -d "${GIT_HOME}" ]; then
    mkdir ${GIT_HOME}
fi

# Reboot
echo -e "sudo reboot now"
echo "sudo reboot now" > ${REBOOT}
chmod +x ${REBOOT}
echo "reboot is ${REBOOT}"

# JsObjects
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects > ${GET_JSOBJECTS}
chmod +x ${GET_JSOBJECTS}
echo "JsOobjects is ${GET_JSOBJECTS}"

# SSH Setup
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/ssh-setup > ${SSH_SETUP}
chmod +x ${SSH_SETUP}
echo "ssh-setup is ${SSH_SETUP}"

## Repo Setup
cd ${GIT_HOME}

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > ${GET_REPOS}

chmod +x ${GET_REPOS}

echo "get-repos is ${GET_REPOS}"
