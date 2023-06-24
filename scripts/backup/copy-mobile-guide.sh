#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR_MOBILE="$CLOUDNOTES/elvenware/development/web/Mobile/"
DEST_DIR_MOBILE="$CHAIO/elves/_mobile-guide"

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
