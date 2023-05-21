#! /bin/bash

SSH=~/.ssh
CSC=/home/ubuntu/Git/charliecalvert.github.io/scripts/
# FILES=${CSC}*.sh    # All files in the scripts directory

# scp ${CSC}/1-create-repo-scripts-in-root.sh aws-spot:/home/ubuntu/.ssh/.

find . -type f -name '[0-9]*' -exec scp {} aws-spot:/home/ubuntu/.ssh/. \;
scp ${SSH}/AwsConfigAll.zip aws-spot:/home/ubuntu/.ssh/.
