SystemAppsScript(){
    echo " ---/ Downloading Applications \--- "  
     # CLI Tools
    brew install curl
    brew install sdl2
    brew install python 
    brew install pyenv 


    # System Apps
    brew install --cask rectangle
    brew install --cask stats


    # Dev Toolkit
    brew install --cask visual-studio-code
    brew install --cask arduino-ide
    brew install --cask postman

    brew tap mongodb/brew
    brew install mongodb-community@6.0
    #brew install --cask anaconda
    #brew install iterm2
    

    # Apps
    brew install --cask google-chrome
    brew install --cask spotify
    brew install --cask notion
    brew install --cask discord
    brew install --cask obs

    brew install --cask autodesk-fusion
    brew install --cask bambu-studio
    brew install --cask figma
    brew install --cask ultimaker-cura
    brew install --cask blender
    brew install --cask firefox@developer-edition


    # MAS install
    mas install 497799835 #xcode 
    mas install 1289583905 #pixelmator pro
    mas install 424389933 #final cut pro

    # wget https://pldaniels.com/flexbv5/free/FlexBVFree-5.0345-macos.zip
    # wget https://image.easyeda.com/files/easyeda-pro-mac-arm64-2.1.61.zip

    echo "---\ COMPLETED downloading Applications /---"
    sleep 3
}