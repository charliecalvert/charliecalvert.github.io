---
layout: post
title:  "Notes on nginx Basics"
date:   2023-04-18 12:00:00 -0800
categories: jekyll update
---

## Default Install

``` bash
sudo apt-get install nginx -y
```

Look in **/var/www/html/**

See also [jekyll Strategy C](/setup/2023/04/18/jekyll-setup.html)

## Basics

It should all be in here:

``` bash
git clone git@github.com:charliecalvert/elven-web.git
```

## Other notes

None of these notes amount too much They're all half formed:

like this:

``` bash
 sudo add-apt-repository 'deb-src https://nginx.org/packages/ubuntu/ jammy nginx'
 The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ABF5BD827BD9BF62
 export key=ABF5BD827BD9BF62
 ## Replace $key with the corresponding $key from your GPG error.
 ```

 After you replace the key:

``` bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
sudo apt update
sudo apt install nginx
sudo systemctl start nginx
curl localhost
```

``` bash
export release=JammyJellyfish
deb https://nginx.org/packages/ubuntu/ $release nginx
deb-src https://nginx.org/packages/ubuntu/ $release nginx

sudo apt update
sudo apt install nginx
```

like this:

``` bash
 sudo add-apt-repository 'deb-src https://nginx.org/packages/ubuntu/ jammy nginx'
 The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ABF5BD827BD9BF62
 export key=ABF5BD827BD9BF62
 ## Replace $key with the corresponding $key from your GPG error.
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
 sudo apt update
 sudo apt install nginx
 sudo systemctl start nginx
 curl localhost
```

## Other Techniques

Here we create or build a Docker container with a jekyl siter in it.

Dokerfile:

``` Dockerfile
FROM nginx
COPY myblog01/_site /usr/share/nginx/html
```

Serve:

``` bash
#! /bin/bash

export site_name="myblog01"
cd $site_name

docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:4000:4000 \
  jekyll/jekyll \
  jekyll serve
```

Build:

``` bash 
#! /bin/bash

export site_name="myblog01"
export JEKYLL_VERSION=latest

cd $site_name

docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build --watch
```

## Subdomains

``` bash
git clone git@github.com:charliecalvert/charliecalvert.github.io.git
cd /etc/nginx/
cat nginx.conf
cd sites-enabled/
cat default
cd ../sites-available/
cat default
cat default.old
cd sites-enabled/
```
Create your A record:

![subdomain a record](https://s3.amazonaws.com/bucket01.elvenware.com/images/subdomain-edit.png)

``` bash
ping go.elven.work
ping elven.work
sudo mkdir /var/www/html/go.elven.work
ll /var/www/html/
sudo nano /var/www/html/go.elven.work/index.html
sudo nano /etc/nginx/sites-available/go.elven.work
sudo nginx -t # Check your work
sudo ln -s /etc/nginx/sites-available/go.elven.work .
sudo systemctl restart nginx
sudo certbot -d go.elven.work --expand
```
