---
layout: post
title:  "Repos Setup & JsObjects"
date:   2023-04-18 14:00:00 -0800
categories: setup
---

## JsObjects

Get [JsObjects](https://github.com/charliecalvert/JsObjects) like this:

```
curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects > get-jsobjects
chmod +x get-jsobjects
./get-jsobjects
```

Get the ssh keys:

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/ssh-setup > ssh-setup
chmod +x ssh-setup
./ssh-setup

gd

curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos

chmod +x get-repos
./get-repos