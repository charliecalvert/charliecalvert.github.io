#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR_CSS="$CLOUDNOTES/elvenware/development/web/CssGuide/"
DEST_DIR_CSS="$CHAIO/elves/_css-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
