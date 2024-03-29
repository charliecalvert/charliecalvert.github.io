---
layout: post
title:  "Repos Setup & JsObjects"
date:   2023-04-18 14:00:00 -0800
categories: setup
---

## Update

``` bash
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

if [ ! -d "$GIT" ]; then
    mkdir $GIT
fi

cd $GIT

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos.sh

chmod +x get-repos
# ./get-repos
echo "get-repos is ./Git/get-repos.sh"

```

## JsObjects

Get [JsObjects](https://github.com/charliecalvert/JsObjects) like this:

``` bash
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects > get-jsobjects
chmod +x get-jsobjects
./get-jsobjects
```

## Get the ssh keys

The details are in the vault.

``` bash
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/ssh-setup > ssh-setup
chmod +x ssh-setup
./ssh-setup
```

## Send AWS Conffig

Put any SSH keys or configuration files that you need into a ZIP file called **AWSConfigAll.zip**.

Set up a portion of your **config** file to define a rule called **aws-spot**:

```
Host aws-spot
        HostName <YOUR-AWS-INSTANCE-PUBLIC-IP>
        Port 22
        User ubuntu
        IdentityFile ~/.ssh/<YOUR-AWS-PRIVATE-KEY>
```

Then secure copy your keys and config file to AWS:

``` bash
 scp AwsConfigAll.zip aws-spot:/home/ubuntu/.ssh/.
```

On the server (aws):

``` bash
sudo apt install unzip zip dos2unix
cd /home/ubuntu/.ssh/
unzip ./AwsConfigAll.zip

```

## Get Repos

``` bash


if [ ! -d "$GIT" ]; then
    mkdir $GIT
fi

cd $GIT

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos.sh

chmod +x get-repos
# ./get-repos
echo "get-repos is ./Git/get-repos.sh"
echo "git clone git@github.com:charliecalvert/charliecalvert.github.io.git"
```

## Create User

``` bash
apt install sudo curl git
add user myuser
```

Become the new user:

``` bash
su - myuser
```

Something like this might add a user without any prompts:

``` bash
adduser myuser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "myuser:password" | sudo chpasswd
```

We are using echo to pass a username and password in clear text to the chpasswd command. This is not secure, but it is convenient.

## Add to Sudoers

``` bash
usermod -aG sudo myuser
```
