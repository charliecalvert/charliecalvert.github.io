#!/bin/bash

# Copy files from CLOUDNOTES to CHAIO

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

# -----------------------------------
# Copy files defined in these variables
# -----------------------------------
DEV=$CLOUDNOTES/elvenware/development
# -----------------------------------
# Define source and destination directories
# -----------------------------------
# ANDROID
SOURCE_DIR_ANDROID="${DEV}/android/"
DEST_DIR_ANDROID="$CHAIO/elves/_android-guide"
# AWS
SOURCE_DIR_AWS="$CLOUDNOTES/Assignments/Aws/"
DEST_DIR_AWS="${CHAIO}/elves/_aws-guide"
# CLOUD
SOURCE_DIR_CLOUD="$DEV/cloud/"
DEST_DIR_CLOUD="${CHAIO}/elves/_cloud-guide"
# COUCHDB
SOURCE_DIR_COUCHDB="$CLOUDNOTES/Assignments/CouchDb/"
DEST_DIR_COUCHDB="$CHAIO/elves/_couchdb-guide"
# CSHARP
SOURCE_DIR_CSHARP="$DEV/csharp/"
DEST_DIR_CSHARP="${CHAIO}/elves/_csharp-guide"
# CSS
SOURCE_DIR_CSS="$DEV/web/CssGuide/"
DEST_DIR_CSS="$CHAIO/elves/_css-guide"
# DATABASE
SOURCE_DIR_DATABASE="${DEV}/database/"
DEST_DIR_DATABASE="$CHAIO/elves/_database-guide"
# DESIGN
SOURCE_DIR="${DEV}/design/"
DEST_DIR="$CHAIO/elves/_design-guide"
# ECMA SCRIPT
SOURCE_DIR_ECMASCRIPT="$CLOUDNOTES/Assignments/EcmaScript/"
DEST_DIR_ECMASCRIPT="$CHAIO/elves/_ecmascript-guide"
# FIREBASE
SOURCE_DIR_FIREBASE="$CLOUDNOTES/Assignments/Firebase/"
DEST_DIR_FIREBASE="${CHAIO}/elves/_firebase-guide"
# HEROKU
SOURCE_DIR_HEROKU="$CLOUDNOTES/Assignments/Heroku/"
DEST_DIR_HEROKU="${CHAIO}/elves/_heroku-guide"
# MIDTERMFINAL
SOURCE_DIR_MIDTERMFINAL="$CLOUDNOTES/Assignments/MidtermFinal/"
DEST_DIR_MIDTERMFINAL="$CHAIO/elves/_midtermfinal-guide"
# MOBILE
SOURCE_DIR_MOBILE="$DEV/web/Mobile/"
DEST_DIR_MOBILE="$CHAIO/elves/_mobile-guide"

# -----------------------------------
# Confirm that the directories exist
# -----------------------------------
function checkDirs() {
    if [ ! -d "${1}" ]; then
        echo -e ${BIRed}"ERROR: ${1} does not exist. Creating it."${Color_Off}
        sudo mkdir -p ${1}
    fi

    if [ ! -d "${2}" ]; then
        echo -e ${BIRed}"ERROR: ${2} does not exist."${Color_Off}
        exit 1
    fi
}

# -----------------------------------
# Display a message
# -----------------------------------
function message() {
    echo -e "\n${Green}================== \n${BIGreen}$1${Green} \n==================${Color_Off}"
}

# -----------------------------------
# Perform a dry run
# -----------------------------------
function dryRun() {
    message "Dry Run \n${1} \n${2}"
    checkDirs ${1} ${2}
    rsync -avrun --delete --include="*/" --include="*.md" --exclude="*" ${1} ${2}
}

# -----------------------------------
# Perform a real copy
# -----------------------------------
function realCopy() {
    message "Real Copy"
    checkDirs ${1} ${2}
    rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${1} ${2}
}

# -----------------------------------
# Main Menu
# -----------------------------------
while true; do
    message "Menu"
    echo -e "${BIGreen} a) Dry Run Cloud"${Color_Off}
    echo -e "${BIGreen} b) Real Copy Cloud"${Color_Off}
    echo -e "${BIGreen} c) Dry Run CouchDB"${Color_Off}
    echo -e "${BIGreen} d) Real Copy CouchDB"${Color_Off}
    echo -e "${BIGreen} e) Dry Run Database"${Color_Off}
    echo -e "${BIGreen} f) Real Copy Database"${Color_Off}
    echo -e "${BIGreen} g) Dry Run EcmaScript"${Color_Off}
    echo -e "${BIGreen} h) Real Copy EcmaScript"${Color_Off}
    echo -e "${BIGreen} i) Dry Run Mobile"${Color_Off}
    echo -e "${BIGreen} j) Real Copy Mobile"${Color_Off}
    echo -e "${BIGreen} k) Dry Run Android"${Color_Off}
    echo -e "${BIGreen} l) Real Copy Android"${Color_Off}
    echo -e "${BIGreen} m) Dry Run Aws"${Color_Off}
    echo -e "${BIGreen} n) Real Copy Aws"${Color_Off}
    echo -e "${BIGreen} o) Dry Run Css"${Color_Off}
    echo -e "${BIGreen} p) Real Copy Css"${Color_Off}
    echo -e "${BIGreen} q) Dry Run Csharp"${Color_Off}
    echo -e "${BIGreen} r) Real Copy Csharp"${Color_Off}
    echo -e "${BIGreen} s) Dry Run Design"${Color_Off}
    echo -e "${BIGreen} t) Real Copy Design"${Color_Off}
    echo -e "${BIGreen} u) Dry Run Firebase"${Color_Off}
    echo -e "${BIGreen} v) Real Copy Firebase"${Color_Off}
    echo -e "${BIGreen} w) Dry Run Heroku"${Color_Off}
    echo -e "${BIGreen} x) Real Copy Heroku"${Color_Off}
    echo -e "${BIGreen} y) Dry Run MidtermFinal"${Color_Off}
    echo -e "${BIGreen} z) Real Copy MidtermFinal"${Color_Off}
#    echo -e "${BIGreen} y) Dry Run All"${Color_Off}
#    echo -e "${BIGreen} z) Real Copy All"${Color_Off}
    echo -e "${Red} 1) Exit (You should source .bashrc when done)"${Color_Off}
    echo -e "\n"${Color_Off}
    read -p "Please make a selection: " eotuyx
    case $eotuyx in
        [Aa]* ) dryRun ${SOURCE_DIR_CLOUD} ${DEST_DIR_CLOUD} false; continue;;
        [Bb]* ) realCopy ${SOURCE_DIR_CLOUD} ${DEST_DIR_CLOUD} false; continue;;
        [Cc]* ) dryRun ${SOURCE_DIR_COUCHDB} ${DEST_DIR_COUCHDB} false; continue;;
        [Dd]* ) realCopy ${SOURCE_DIR_COUCHDB} ${DEST_DIR_COUCHDB} false; continue;;
        [Ee]* ) dryRun ${SOURCE_DIR_DATABASE} ${DEST_DIR_DATABASE} false; continue;;
        [Ff]* ) realCopy ${SOURCE_DIR_DATABASE} ${DEST_DIR_DATABASE} false; continue;;
        [Gg]* ) dryRun ${SOURCE_DIR_ECMASCRIPT} ${DEST_DIR_ECMASCRIPT} false; continue;;
        [Hh]* ) realCopy ${SOURCE_DIR_ECMASCRIPT} ${DEST_DIR_ECMASCRIPT} false; continue;;
        [Ii]* ) dryRun ${SOURCE_DIR_MOBILE} ${DEST_DIR_MOBILE} false; continue;;
        [Jj]* ) realCopy ${SOURCE_DIR_MOBILE} ${DEST_DIR_MOBILE} false; continue;;
        [Kk]* ) dryRun ${SOURCE_DIR_ANDROID} ${DEST_DIR_ANDROID} false; continue;;
        [Ll]* ) realCopy ${SOURCE_DIR_ANDROID} ${DEST_DIR_ANDROID} false; continue;;
        [Mm]* ) dryRun ${SOURCE_DIR_AWS} ${DEST_DIR_AWS} false; continue;;
        [Nn]* ) realCopy ${SOURCE_DIR_AWS} ${DEST_DIR_AWS} false; continue;;
        [Oo]* ) dryRun ${SOURCE_DIR_CSS} ${DEST_DIR_CSS} false; continue;;
        [Pp]* ) realCopy ${SOURCE_DIR_CSS} ${DEST_DIR_CSS} false; continue;;
        [Qq]* ) dryRun ${SOURCE_DIR_CSHARP} ${DEST_DIR_CSHARP} false; continue;;
        [Rr]* ) realCopy ${SOURCE_DIR_CSHARP} ${DEST_DIR_CSHARP} false; continue;;
        [Ss]* ) dryRun ${SOURCE_DIR_DESIGN} ${DEST_DIR_DESIGN} false; continue;;
        [Tt]* ) realCopy ${SOURCE_DIR_DESIGN} ${DEST_DIR_DESIGN} false; continue;;
        [Uu]* ) dryRun ${SOURCE_DIR_FIREBASE} ${DEST_DIR_FIREBASE} false; continue;;
        [Vv]* ) realCopy ${SOURCE_DIR_FIREBASE} ${DEST_DIR_FIREBASE} false; continue;;
        [Ww]* ) dryRun ${SOURCE_DIR_HEROKU} ${DEST_DIR_HEROKU} false; continue;;
        [Xx]* ) realCopy ${SOURCE_DIR_HEROKU} ${DEST_DIR_HEROKU} false; continue;;
        [Yy]* ) dryRun ${SOURCE_DIR_MIDTERMFINAL} ${DEST_DIR_MIDTERMFINAL} false; continue;;
        [Zz]* ) realCopy ${SOURCE_DIR_MIDTERMFINAL} ${DEST_DIR_MIDTERMFINAL} false; continue;;
        [1]* ) break;;
        * ) echo -e "\n$NC" + "Please answer with c, r or x.";;
    esac
done