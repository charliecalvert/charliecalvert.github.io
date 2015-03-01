#!/bin/sh

# See the notes at the top of PullMe.sh

git add .
git commit -m '$1 $ date +"%m-%d-%Y"'
git push


