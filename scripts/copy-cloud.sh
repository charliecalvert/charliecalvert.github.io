#!/bin/bash

# Copy files to cloud directory
# CLOUDNOTES="$HOME/Git/CloudNotes"
SOURCE_DIR="$CLOUDNOTES/elvenware/development/cloud/"
DEST_DIR="$HOME/Git/charliecalvert.github.io/_posts/elvenware/development/cloud"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}

