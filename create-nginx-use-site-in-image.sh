#! /bin/bash

SITE=myblog
docker build -t ${SITE} .
docker run --name myblog-ngnx -d -p 80:80 ${SITE}
