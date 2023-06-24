#!/bin/bash

# Copy files to cloud directory
# CLOUDNOTES="$HOME/Git/CloudNotes"
SOURCE_DIR_FIREBASE="$CLOUDNOTES/Assignments/Firebase/"
DEST_DIR_FIREBASE="${CHAIO}/elves/_firebase-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR_FIREBASE} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR_FIREBASE} ${DEST_DIR}
