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
SOURCE_DIR_COUCHDB="$CLOUDNOTES/Assignments/CouchDb/"
DEST_DIR_COUCHDB="$CHAIO/elves/_couchdb-guide"
SOURCE_DIR_ECMASCRIPT="$CLOUDNOTES/Assignments/EcmaScript/"
DEST_DIR_ECMASCRIPT="$CHAIO/elves/_ecmascript-guide"

function checkDirs() {
    if [ ! -d "${1}" ]; then
        echo -e ${BIRed}"ERROR: ${1} does not exist. Creating it."${Color_Off}
        sudo mkdir -p ${1}
    fi

    if [ ! -d "${2}" ]; then
        echo -e ${BIRed}"ERROR: ${2} does not exist."${Color_Off}
        exit 1
    fi

    # if [ ! -d "${DEST_DIR_ECMASCRIPT}" ]; then
    #     echo -e ${BIRed}"ERROR: ${DEST_DIR_ECMASCRIPT} does not exist. Creating it."${Color_Off}
    #     sudo mkdir -p ${DEST_DIR_ECMASCRIPT}
    # fi

    # if [ ! -d "${SOURCE_DIR_ECMASCRIPT}" ]; then
    #     echo -e ${BIRed}"ERROR: ${SOURCE_DIR_ECMASCRIPT} does not exist."${Color_Off}
    #     exit 1
    # fi
}
# if [ ! -d "${DEST_DIR}" ]; then
#     echo -e ${BIRed}"ERROR: ${DEST_DIR} does not exist. Creating it."${Color_Off}
#     sudo mkdir -p ${DEST_DIR}
# fi

# if [ ! -d "${SOURCE_DIR}" ]; then
#     echo -e ${BIRed}"ERROR: ${SOURCE_DIR} does not exist."${Color_Off}
#     exit 1
# fi

function message() {
    echo -e "\n${Green}================== \n${BIGreen}$1${Green} \n==================${Color_Off}"
}

function dryRun() {
    message "Dry Run \n${1} \n${2}"
    checkDirs ${1} ${2}
    rsync -avrun --delete --include="*/" --include="*.md" --exclude="*" ${1} ${2}
}

function realCopy() {
    message "Real Copy"
    checkDirs ${1} ${2}
    rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${1} ${2}
}

while true; do
    message "Menu"
    echo -e "${BIGreen} a) Dry Run CouchDB"${Color_Off}
    echo -e "${BIGreen} b) Real Copy CouchDB"${Color_Off}
    echo -e "${BIGreen} c) Dry Run EcmaScript"${Color_Off}
    echo -e "${BIGreen} d) Real Copy EcmaScript"${Color_Off}
    echo -e "${Red} xq) Exit (You should source .bashrc when done)"${Color_Off}
    echo -e "\n"${Color_Off}
    read -p "Please make a selection: " eotuyx
    case $eotuyx in
        [Aa]* ) dryRun ${SOURCE_DIR_COUCHDB} ${DEST_DIR_COUCHDB} false; continue;;
        [Bb]* ) realCopy ${SOURCE_DIR_COUCHDB} ${DEST_DIR_COUCHDB} false; continue;;
        [Cc]* ) dryRun ${SOURCE_DIR_ECMASCRIPT} ${DEST_DIR_ECMASCRIPT} false; continue;;
        [Dd]* ) realCopy ${SOURCE_DIR_ECMASCRIPT} ${DEST_DIR_ECMASCRIPT} false; continue;;
        [XxQq]* ) break;;
        * ) echo -e "\n$NC" + "Please answer with c, r or x.";;
    esac
done