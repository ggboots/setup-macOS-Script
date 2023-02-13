#!/bin/bash

echo " "
echo " \\\\\ Setup Installer Script for Macos Environment ///// "
echo " "
read -p "Press Enter to Begin: "
sleep 0.5
echo " ---/ STEP:1 Package Manager \--- "
sleep 0.8
#xcode select (install clang compiler fro c++
xcode-select --install
#homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#wget + cURL
brew install wget
sleep 1.5
#Node
wget https://nodejs.org/dist/v16.17.1/node-v16.17.1.pkg
sleep 1.5
read -r "setup node then click RETURN"
#mas
brew install mas
#git
brew install git

#NVM curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh -- https://github.com/nvm-sh/nvm
#brew install pyenv -- https://github.com/pyenv/pyenv
#brew install sdl2 -- https://github.com/libsdl-org/SDL/releases/tag/release-2.26.2

sleep 0.7

echo " ---/ STEP:2 .plist \--- "
# 1- Change to Bash
chsh -s /bin/bash
# 2- hide .zsh message
export BASH_SILENCE_DEPRECATION_WARNING=1
# 3-
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
# 4-
sudo defaults write /library/Preferences/SystemConfiguration/ com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd
# 5-
defaults write com.apple.screencapture type jpg

#terminal - Pro profile/ transparency to 96%/ font change

sleep 0.7

echo " ---/ STEP 3: System Software \---"
# 1- window manager
brew install rectangle
# 2- stats windows
brew install --cask stats
# 3- mongoDB
brew tap mongodb/brew
brew install mongodb-community@6.0

#brew install iterm2

echo " ---/ STEP 4: Apps \---"
# brew install --cask firefox
brew install homebrew/cask-version/firefox-developer-edition
# 2- VScode
brew install --cask visual-studio-code
# 3- Discord
brew install discord

clear 
echo "setup script has completed :)"
#finalCut (mas / appstore)
#pixelmater pro (mas / appstore)
#figma wget app

### Resourcs ###
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
