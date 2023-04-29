#! /bin/bash

SSH=~/.ssh
CSC=/home/ubuntu/Git/charliecalvert.github.io/scripts/
FILES=${CSC}*.sh    # All files in the scripts directory
scp ${SSH}/AwsConfigAll.zip ${FILES} aws-spot:/home/ubuntu/.ssh/.
