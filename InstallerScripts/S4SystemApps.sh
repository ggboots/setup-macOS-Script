Stage4_setupScript(){
    echo " ---/ STEP 4: Apps \---"
    echo " "
    sleep 0.85

    # CLI Tools
    brew install curl
    brew install sdl2
    # brew install --cask anaconda
    brew install python 
    brew install pyenv 
    brew tap mongodb/brew
    brew install mongodb-community@6.0


    # DevApps
    brew install --cask firefox@developer-edition
    brew install --cask visual-studio-code
    brew install --cask postman
    brew install --cask arduino-ide
    brew install blender
    brew install --cask autodesk-fusion
    brew install --cask ultimaker-cura
    # brew install iterm2

    #FlexBV here


    # Apps
    brew install --cask google-chrome
    brew install --cask notion
    brew install --cask spotify
    brew install discord
    brew install obs

    # MAS install
    mas install 497799835 #xcode 
    mas install 1289583905 #pixelmator pro
    mas install 424389933 #final cut pro


    open https://www.figma.com/download/desktop/mac
    
    echo " downloading fimga "
    read -r "Download figma then press RETURN to continue"
    echo " "


    echo "Downloading FlexBV"
    wget https://pldaniels.com/flexbv5/free/FlexBVFree-5.0345-macos.zip
    sleep 0.8
    #open file location
    echo "Download figma then press RETURN to continue"
    read -r "Done"


    # wget https://image.easyeda.com/files/easyeda-pro-mac-arm64-2.1.61.zip

    #FileZilla
    #Betaflight

    echo "---\ FINISHED STAGE 3 -- downloading Apps /---"
    sleep 0.8
    clear

}