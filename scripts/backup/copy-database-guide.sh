#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR_DATABASE="$CLOUDNOTES/elvenware/development/database/"
DEST_DIR_DATABASE="$HOME/Git/charliecalvert.github.io/elves/_database-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
