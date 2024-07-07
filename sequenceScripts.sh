# NodePkg="node-v18.14.2.pkg"

# setupSequence1(){
#     echo " ---/ Downloading Package Managers \--- "  sleep 0.3
    
#     xcode-select --install 
#     echo " " read -p "Press ENTER when xcode has downloaded" echo " "

#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" #homebrew
#     (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ares/.profile
# 	eval "$(/opt/homebrew/bin/brew shellenv)"
#     #wget + cURL
#     brew tap homebrew/cask-versions
#     brew install wget 


#     wget https://nodejs.org/dist/v18.14.2/node-v18.14.2.pkg
#     open node-v18.14.2.pkg
#     echo " " read -r "setup node then click RETURN" echo " "

#     rm -r node-v18.14.2.pkg

#     sleep 0.6
#     brew install mas

#     brew install git


#     echo " "
#     echo "---\ Completed downloading Package Managers /---"
#     sleep 0.6
#     clear

# }

# setupSequence2(){
#     echo " ---/ Downloading macos plist \--- " 
#     sleep 0.3

#     #Rename Mac
#     sudo scutil --set HostName name-you-want

#     chsh -s /bin/bash
#     export BASH_SILENCE_DEPRECATION_WARNING=1

#     #Dock

#     defaults write "com.apple.dock" "persistent-apps" -array; killall Dock
#     defaults write com.apple.dock orientation left
#     defaults write com.apple.dock show-recents -bool FALSE

#     defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
#     sudo defaults write /library/Preferences/SystemConfiguration/ com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd
#     defaults write com.apple.screencapture type jpg

#     #terminal - Pro profile/ transparency to 96%/ font change
#     echo "---\ Completed downloading macos plist /---"
#     sleep 0.6
#     clear

#  }

#  setupSequence3(){
#     echo " ---/ Downloading System Config and System Software \---" 
#     sleep 0.7


#     chsh -s /bin/bash
#     export BASH_SILENCE_DEPRECATION_WARNING=1
#     # ensure current git repo has been tapped
#     brew tap homebrew/cask-versions
#     brew install rectangle
#     brew install --cask stats
    
#     open /Applications/Rectangle.app/
#     echo ""
#     read -r "Give permission to rectangle then RETURN to continue"
#     echo " "

#     brew tap mongodb/brew
#     brew install mongodb-community@6.0

#     echo "---\ Completed downloading System Software /---"
#     sleep 0.6
#     clear
# }

# # SDK

# setupSequence4(){
#     echo " ---/ STEP 4: Apps \---"
#     echo " "
#     sleep 0.85

#     # CLI Tools
#     brew install curl
#     brew install sdl2
#     # brew install --cask anaconda
#     brew install python 
#     brew install pyenv #python package manager
#     brew tap mongodb/brew
#     brew install mongodb-community@6.0


#     # DevApps
#     brew install --cask firefox@developer-edition
#     brew install --cask visual-studio-code
#     brew install --cask postman
#     brew install --cask arduino-ide
#     brew install blender
#     brew install --cask autodesk-fusion
#     brew install --cask ultimaker-cura
#     # brew install iterm2

#     #FlexBV here


#     # Apps
#     brew install --cask google-chrome
#     brew install --cask notion
#     brew install --cask spotify
#     brew install discord
#     brew install obs

#     # MAS install
#     mas install 497799835 #xcode 
#     mas install 1289583905 #pixelmator pro
#     mas install 424389933 #final cut pro


#     open https://www.figma.com/download/desktop/mac
    
#     echo " downloading fimga "
#     read -r "Download figma then press RETURN to continue"
#     echo " "


#     echo "Downloading FlexBV"
#     wget https://pldaniels.com/flexbv5/free/FlexBVFree-5.0345-macos.zip
#     sleep 0.8
#     #open file location
#     echo "Download figma then press RETURN to continue"
#     read -r "Done"



#     #FileZilla
#     #Betaflight

#     clear 
#     echo "---\ FINISHED STAGE 3 -- downloading Apps /---"
#     sleep 0.8
#     clear

# }

# setupPrerequisite(){
#     # To Do list, have check marks spots
#     echo "---/ Pre Requisites Check"
#     echo -e "--- ${GRN}macOS Rearrange UI ${endl}"
#     echo -e "--- ${GRN}Arrange windows and manage Launchpad ${endl}"
#     echo -e "--- ${GRN}Remove dock elements and fix widgets ${endl}"
#     echo -e "--- ${GRN}AppleID login, Desktop and Documents Enable/Disable${endl}"
#     echo -e "--- ${GRN}SSH key for github connection${endl}"
#     echo "---------------------------"

#     # prerequisite 
#     # - macOS boots
#     # - arrange Windows and manage launchpad
#     # - remove dock elements
#     # - widgets, remove everyting and wallpaper
#     # - AppleID login and Desktop Documents enabled/disable
#     # - ssh key for github
#     read -r "Press RETURN to when complete"
# }

