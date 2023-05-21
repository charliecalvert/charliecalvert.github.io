---
layout: post
title:  "Ubuntu Jekyll"
date:   2023-04-17 13:00:00 -0800
categories: jekyll update
---

## Create Container

- Create a docker container based on ubuntu/lunar (23.04). 
- Give it a specific name. 
- Map a directory inside of it called **/var/temp** to the current working directory: 

``` shell
docker run --name elfa -v ${PWD}:/var/tmp -it ubuntu:lunar /bin/bash
```