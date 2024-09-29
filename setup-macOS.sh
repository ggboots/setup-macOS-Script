#!/bin/bash
source ./setupScripts/1-PackageManager.sh
source ./setupScripts/2-SystemPref.sh
source ./setupScripts/3-SystemApps.sh

while true;
do
echo " "
echo " "
echo " \\\\\ Setup Installer Script for Macos Environment ///// "
echo -e "--- ${GRN}Step 1: Package Managers ${endl}"
echo -e "--- ${GRN}Step 2: macOS Preferences ${endl}"
echo -e "--- ${GRN}Step 3: Applications ${endl}"
echo "---------------------------"
read -p "Press Enter to [Y/N]: " option

case $option in
    Y|y) 
        PackageManagersScript
        SystemPrefScript
        SystemAppsScript
        exit
        ;;
    N|n) exit;;

esac
done


