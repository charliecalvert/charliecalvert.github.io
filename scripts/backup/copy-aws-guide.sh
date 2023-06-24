#!/bin/bash

# Copy files to cloud directory
# CLOUDNOTES="$HOME/Git/CloudNotes"
SOURCE_DIR_AWS="$CLOUDNOTES/Assignments/Aws/"
DEST_DIR_AWS="${CHAIO}/elves/_aws-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
