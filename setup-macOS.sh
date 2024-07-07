#!/bin/bash
source ./sequenceScripts.sh
source ./InstallerScripts/S1PackageManagers.sh
source ./InstallerScripts/S3plistConfig.sh
source ./InstallerScripts/S4SystemApps.sh

RED="\033[31m"
GRN="\033[0;32m"
endl="\033[0m"

while true;
do
echo " "
echo " "
echo " \\\\\ Setup Installer Script for Macos Environment ///// "
echo -e "--- ${GRN}Step 1: Package Managers ${endl}"
echo -e "--- ${GRN}Step 2: macOS Config and plist ${endl}"
echo -e "--- ${GRN}Step 3: System Apps ${endl}"
echo "---------------------------"
read -p "Press Enter to [y/n]: " option

case $option in
    Y|y) 
	setupSequence1
    Stage3_setupScript
    Stage4_setupScript
	# setupSequence2
	# setupSequence3
	# setupSequence4
        exit
        ;;
    N|n) exit;;

esac
done

# setupSequence1
# setupSequence1
# setupSequence1
# setupSequence1
# prerequisite

### Resourcs ###
# https://www.gnu.org/software/bash/manual/bash.html

# https://nodejs.org/en/
# https://brew.sh/
# https://git-scm.com/downloads
# https://github.com/mas-cli/mas
# https://www.libsdl.org

# swift support
# https://support.apple.com/kb/DL1998?locale=en_AU

# https://www.mongodb.com/try/download/compass
# https://www.mongodb.com/try/download/community
# https://www.mongodb.com/docs/mongodb-shell/install/

#https://www.macupdate.com/app/mac/63002/aldente/download
#https://dotnet.microsoft.com/en-us/download
#https://www.figma.com/login
