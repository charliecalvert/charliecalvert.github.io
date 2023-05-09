#!/bin/bash

# Copy files to cloud directory

SOURCE_DIR="$HOME/Git/CloudNotes/development/cloud/"
DEST_DIR="$HOME/Git/charliecalvert.github.io/_posts/development/cloud"

rsync -avu --delete SOURCE_DIR DEST_DIR
