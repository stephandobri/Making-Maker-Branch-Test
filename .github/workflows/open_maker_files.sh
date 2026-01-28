#!/usr/bin/env bash
# bash boilerplate
set -euo pipefail # strict mode
readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
function l { # Log a message to the terminal.
    echo
    echo -e "[$SCRIPT_NAME] ${1:-}"
}

# Files to copy from the repo
Build_Files = ./Build_Files
Maker_Guide = ./Documents/*Maker_Guide.pdf
User_Guide = ./Documents/*User_Guide.pdf
Quickstart_Guide = ./Documents/*Quickstart_Guide.pdf

# Copy files if they exist

if [ -f "Build_Files" ]; then
    echo "Copying $Build_Files"
    cp -R ./Build_Files $DESTINATION_PATH
fi

echo "Build Files copied to $DESTINATION_PATH"

if [ -f "Maker_Guide" ]; then
    echo "Copying $Maker_Guide"
    cp -R ./Documents/*Maker_Guide.pdf $DESTINATION_PATH
fi

echo "Maker Guide copied to $DESTINATION_PATH"

if [ -f "User_Guide" ]; then
    echo "Copying $User_Guide"
    cp -R ./Documents/*User_Guide.pdf $DESTINATION_PATH
fi

echo "User Guide copied to $DESTINATION_PATH"

if [ -f "Quickstart_Guide" ]; then
    echo "Copying $Quickstart_Guide"
    cp -R ./Documents/*Quickstart_Guide.pdf $DESTINATION_PATH
fi

echo "Quickstart Guide copied to $DESTINATION_PATH"