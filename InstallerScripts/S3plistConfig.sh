MacName="ARES"

Stage3_setupScript(){
    echo " ---/ Downloading macos plist \--- " 
    sleep 0.8

    #Rename Mac
    sudo scutil --set ComputerName "ARES"
    sudo scutil --set LocalHostName "gboots"
    sudo scutil --set HostName "ares"
    dscacheutil -flushcache #Reset DNS cache will change on restart

    #Bash Setup
    chsh -s /bin/bash
    # export BASH_SILENCE_DEPRECATION_WARNING=1
    sudo chsh -s /opt/homebrew/bin/bash $(whoami)

    #Dock Config
    defaults write "com.apple.dock" "persistent-apps" -array; killall Dock
    defaults write com.apple.dock orientation left
    defaults write com.apple.dock show-recents -bool FALSE
    defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock

    #Menu Bar Config
    defaults -currentHost write com.apple.controlcenter.plist Bluetooth -int 18
    # disable now playing &&&&&&&&&&
    # defaults -currentHost write com.apple.controlcenter.plist Bluetooth -int 18
    # https://apple.stackexchange.com/questions/407185/hide-new-play-icon-in-menu-bar-after-upgrading-to-big-sur

    #Windows Manager Config
    # click on desktop disable
    # disable window snapping
    #change wallpaper &&&&&&
    # gradient
    # https://apple.stackexchange.com/questions/40644/how-do-i-change-desktop-background-with-a-terminal-command

    # Notifications Conifg
    sudo defaults write /library/Preferences/SystemConfiguration/ com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

    #Finder Config
    #finder allter
    #remove favourites
    # default view as columns

     # Additional Config
    defaults write com.apple.screencapture type jpg

    echo "---\ Completed downloading macos plist /---"
    sleep 0.8
    clear

 }