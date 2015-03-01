#!/bin/sh

# See the notes at the top of PullMe.sh
NOW=$(date +"%m-%d-%Y")
PARAM="$1 $NOW"

git add .
git commit -m "$PARAM"
git push


