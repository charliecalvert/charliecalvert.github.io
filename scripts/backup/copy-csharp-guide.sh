#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR_CSHARP="$CLOUDNOTES/elvenware/development/csharp/"
DEST_DIR_CSHARP="${CHAIO}/elves/_csharp-guide"

rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
