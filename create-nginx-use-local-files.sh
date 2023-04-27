#! /bin/bash

SITE=myblog01
docker build -t ${SITE} .
cd ${SITE}/_site
docker run --name myblog-ngnx -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
