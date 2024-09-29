PackageManagersScript(){
    echo " ---/ Downloading Package Managers \--- "  
    
    # Xcode CLI + Rosetta
    sudo xcode-select --install

    read -p "Press ENTER when xcode has downloaded" 

    softwareupdate --install-rosetta --agree-to-license

    sudo xcodebuild -license accept

    # Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ares/.profile
	eval "$(/opt/homebrew/bin/brew shellenv)"

    brew update 
    brew install bash

    brew install wget
    
    
    # NodeJS setup
    sleep 2
    wget https://nodejs.org/dist/v18.14.2/node-v18.14.2.pkg
    read -r "wait for download then click RETURN"
    open node-v18.14.2.pkg
    read -r "setup node then click RETURN " 
    rm -r node-v18.14.2.pkg

    brew install mas

    # Git Setup
    brew install git


    #ssh key
    # ssh-keygen -t ed25519 -C "***@gmail.com"
    # open /Users/***/.ssh/id_ed25519.pub 


    echo "---\ COMPLETED downloading Package Managers /---"
    sleep 3
    clear

}