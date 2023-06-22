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

# Copy files to css-guide directory
SOURCE_DIR="${CHAIO}/_site/"
DEST_DIR="/var/www/elves"

if [ ! -d "${DEST_DIR}" ]; then
    echo -e ${BIRed}"ERROR: ${DEST_DIR} does not exist."${Color_Off}
    sudo mkdir -p ${DEST_DIR}
fi

if [ ! -d "${SOURCE_DIR}" ]; then
    echo -e ${BIRed}"ERROR: ${SOURCE_DIR} does not exist."${Color_Off}
    exit 1
fi

function message() {
    echo -e "\n${Green}================== ${BIGreen}$1${Green} ======================${Color_Off}"
}



function dryRun() {
    message "Dry Run"
    sudo rsync -avru --delete --dry-run \
        --include="*/" --include="*.html" \
        --include="*.css" --include="*.jpg" \
        --include="*.png" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
}

function realCopy() {
    message "Real Copy"
    sudo rsync -avru --delete --include="*/" --include="*.html" --include="*.css" --include="*.jpg" --include="*.png" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
}

while true; do
    message "Menu"
    echo -e "${BIGreen} a) Dry Run"${Color_Off}
    echo -e "${BIGreen} b) Real Copy"${Color_Off}
    echo -e "${Red} x) Exit (You should source .bashrc when done)"${Color_Off}
    echo -e "\n"${Color_Off}
    read -p "Please make a selection: " eotuyx
    case $eotuyx in
        [Aa]* ) dryRun false; continue;;
        [Bb]* ) realCopy false; continue;;
        [XxQq]* ) break;;
        * ) echo -e "\n$NC" + "Please answer with c, r or x.";;
    esac
done