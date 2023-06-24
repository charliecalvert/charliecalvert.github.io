#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR="$CLOUDNOTES/elvenware/development/android/"
DEST_DIR="$CHAIO/elves/_android-guide"

function dryRun {
    echo "Run Basics"
    rsync -avru --dry-run --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
}

function liveRun {
    echo "Run All"
    rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
}

# rsync -avru --delete --dry-run --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
# rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}

while [ "$1" != "" ]; do
    case $1 in
        [Dd]* ) dryRun false; shift;;
        [Ll]* ) liveRun false; shift;;
        [XxQq]* ) break;;
    esac
done
