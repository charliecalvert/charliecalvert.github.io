#! /bin/bash

# Check if the directory ../jekyll-private dash private exists.
# If not, exit with error message.

JEKYLL_PRIVATE="../../jekyll-private"

if [ ! -d ${JEKYLL_PRIVATE} ]; then
    echo "The directory ${JEKYLL_PRIVATE} does not exist."
    echo "You must clone this repositoryy before running
    this script."
    like this:
    echo "cd .."
    echo "git clone git@github.com:charliecalvert/jekyll-private.git"
    exit 1
fi

cd ${JEKYLL_PRIVATE}/scripts
npm i
node create-jekyll-post.js
cd ../../charliecalvert.github.io/scripts
echo "The following files have been created:"
ls ${JEKYLL_PRIVATE}/scripts/202?-??-??-*.markdown
