PackageManagersScript(){
    echo " ---/ Downloading Package Managers \--- "  
    
    # Xcode CLI + Rosetta
    sudo xcode-select --install
    echo "Press ENTER when Xcode CLI has Downloaded"
    read -p "" 

    softwareupdate --install-rosetta --agree-to-license
    sudo xcodebuild -license accept


    # Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ares/.profile
	eval "$(/opt/homebrew/bin/brew shellenv)"

    brew update 
    brew install bash
    
    
    # NodeJS setup
    brew install wget

    wget https://nodejs.org/dist/v18.14.2/node-v18.14.2.pkg
    echo "Wait for pkg to download, then press ENTER"
    read -r 

    open node-v18.14.2.pkg
    echo "Setup NodeJS, then press ENTER"
    read -r 

    rm -r node-v18.14.2.pkg
    echo "nodejs.pkg removed"


    # MAS CLI
    brew install mas


    # Git Setup
    brew install git

    echo "Setup Github SSH key, then press ENTER"
    read -r 

    # ssh key
    # ssh-keygen -t ed25519 -C "***@gmail.com"
    # open /Users/***/.ssh/id_ed25519.pub 


    echo "---\ COMPLETED downloading Package Managers /---"
    sleep 3
    clear

}