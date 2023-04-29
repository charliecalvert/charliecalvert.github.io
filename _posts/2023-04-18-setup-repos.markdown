---
layout: post
title:  "Repos Setup & JsObjects"
date:   2023-04-18 14:00:00 -0800
categories: setup
---

## Update

``` bash
sudo apt update
sudo apt upgrade -y
echo -e "sudo reboot now"
echo "sudo reboot now" > reboot.sh
chmod +x reboot.sh
echo "reboot is ./reboot.sh"
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
gd

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos

chmod +x get-repos
./get-repos
```