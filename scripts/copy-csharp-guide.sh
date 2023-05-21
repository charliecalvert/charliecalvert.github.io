#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR="$CLOUDNOTES/elvenware/development/csharp/"
DEST_DIR="$HOME/Git/charliecalvert.github.io/elves/_csharp-guide"

rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
