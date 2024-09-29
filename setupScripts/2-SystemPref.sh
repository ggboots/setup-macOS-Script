SystemPreferenceScript(){
    echo " ---/ Downloading System Preferences \--- "  
    #Rename Mac
    sudo scutil --set ComputerName "ARES"
    sudo scutil --set LocalHostName "ARES"
    sudo scutil --set HostName "ARES"
    dscacheutil -flushcache #Reset DNS cache will change on restart
    
    #git
    git config --global user.name "ggboots"
    # git config --global user.email **********

    # Bash setup
    # chsh -s /bin/bash
    # sudo chsh -s /opt/homebrew/bin/bash $(whoami)
    # export BASH_SILENCE_DEPRECATION_WARNING=1

    # Dock Preferences
    defaults write "com.apple.dock" "persistent-apps" -array; killall Dock
    defaults write com.apple.dock orientation left
    defaults write com.apple.dock show-recents -bool FALSE
    defaults write com.apple.dock autohide-delay -float 0; 
    defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock

    # Menu Bar Preferences
    defaults -currentHost write com.apple.controlcenter.plist Bluetooth -int 18

    # Notifications Config 

    #Control Centre
    # dont show - now playing
    # always show - sound

    # Screencapture Preferences
    defaults write com.apple.screencapture type jpg

    #Display Preferences
    # disable - Autobrightness

    #Desktop Preferences 
    # disable - Click wallpaper to reveal desktop

    # Window Tiling Preferences
    # disable - tile by dragging 
    # disable - HoLD command key
    # disable - tiled window margins

    echo "---\ COMPLETED changing System Preferences /---"
    sleep 3

}