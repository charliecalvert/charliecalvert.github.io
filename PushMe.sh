#!/bin/sh

# See the notes at the top of PullMe.sh
NOW=$(date +"%m-%d-%Y")

echo $NOW
git add .
git commit -m '$1 $NOW'
git push


