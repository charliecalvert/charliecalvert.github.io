#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR="${CHAIO}/_site/"
DEST_DIR="/var/www/html/go.elven.work"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
