#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR="$CLOUDNOTES/elvenware/development/web/CssGuide"
DEST_DIR="$HOME/Git/charliecalvert.github.io/elves/css-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avrun --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
