#!/bin/bash

# Copy files to cloud directory
# CLOUDNOTES="$HOME/Git/CloudNotes"
SOURCE_DIR="$CLOUDNOTES/elvenware/development/cloud/"
DEST_DIR="${CHARLIE_IO}/elves/_cloud-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}

rm ${DEST_DIR}/Git.md
