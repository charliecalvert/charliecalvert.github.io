#!/bin/bash

# Search with wildcard for text in ~/Git/charliecalvert.github.io/elves/_posts

# cd ~/Git/charliecalvert.github.io/elves/_posts
# FLAGS='-r -n -H -I -C 1'
# INCLUDE='--include=*.md --include=*.markdown'
# EXCLUDE='--exclude=bundle.js --exclude-dir=node_modules --exclude-dir=.git'
# grep ${FLAGS} ${INCLUDE} ${EXCLUDE} "$1"

./SearchChaioText.sh "categories" | grep categories | awk '{print substr($0, index($0, "categories") + length("categories") + 1)}' | sort | uniq