#!/bin/bash

ELF_SCRIPTS=$HOME/Git/JsObjects/Utilities/Templates/Scripts

if [ -f ${ELF_SCRIPTS}/Colors ]; then
    echo -e "${GIGreen}Found ${ELF_SCRIPTS}/Colors${Color_Off}"
    source ${ELF_SCRIPTS}/Colors
else
    BIGreen='\033[1;92m'        # Green
    Green='\033[0;32m'          # Green
    BIRed='\033[1;91m'
    echo -e "${BIRed}Did not find ${ELF_SCRIPTS}/Colors${Color_Off}"
    echo -e "${BIGreen}Exiting${Color_Off}"
    exit 1
fi

function insertFrontMatter() {
    cd /home/ubuntu/Git/CloudNotes # Go to CloudNotes
    npm run InsertFrontMatterNotWorking2 # Insert front matter
    cd ${CHAIO} # Go to charliecalvert.github.io
    cd scripts/
    ./copy-main.sh # Copy files from CLOUDNOTES to CHAIO
}

function createSite() {
    cd ${CHAIO} # Go to charliecalvert.github.io
    ./create_site.sh # Create Jekyll _site
    cd scripts/
    ./copy-chaio-to-elves.sh # Copy Jekyll _site to /var/www/elves
}

while true; do
    message "Menu"
    echo -e "${BIGreen} a) insertFrontMatter "${Color_Off}
    echo -e "${BIGreen} b) createSite"${Color_Off}
    echo -e "${Red} x) Exit "${Color_Off}
    echo -e "\n"${Color_Off}
    read -p "Please make a selection: " eotuyx
    case $eotuyx in
        [Aa]* ) insertFrontMatter false; continue;;
        [Bb]* ) createSite false; continue;;
        [XxQq]* ) break;;
        * ) echo -e "\n$NC" + "Please answer with c, r or x.";;
    esac
done
