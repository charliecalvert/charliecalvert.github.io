#!/bin/bash

cd /home/ubuntu/Git/CloudNotes # Go to CloudNotes
npm run InsertFrontMatterNotWorking2 # Insert front matter
cd ${CHAIO} # Go to charliecalvert.github.io
npm run copy # Copy files from CloudNotes to charliecalvert.github.io
./create_site.sh # Create Jekyll _site
cd scripts/
./copy-chaio-to-elves.sh # Copy Jekyll _site to /var/www/elves