setupSequence1(){
    echo " ---/ Downloading Package Managers \--- "  
    sleep 0.8
    
    xcode-select --install 
    echo " " read -p "Press ENTER when xcode has downloaded" echo " "

    # Rosetta 2
    softwareupdate --install-rosetta --agree-to-license


    # Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" #homebrew
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ares/.profile
	eval "$(/opt/homebrew/bin/brew shellenv)"
    #wget + cURL
    brew update && brew install bash
    brew install wget 



    #NodeJS + npm
    wget https://nodejs.org/dist/v18.14.2/node-v18.14.2.pkg
    echo downloading Node
    echo " " read -r "setup node then click RETURN" echo " "

    open node-v18.14.2.pkg
    echo " " read -r "setup node then click RETURN" echo " "

    rm -r node-v18.14.2.pkg

    sleep 0.6
    brew install mas
    brew install git

    # git config --list --show-origin

    #Generate ssh Key
    # ssh-keygen -t ed25519 -C "your_email@example.com" 
    # eval "$(ssh-agent -s)"

    #cat ~/.ssh/id_ed25519.pub

    # https://github.com/settings/keys


    git config --global user.name "ggboots"
    git config --global user.email ggboots.99@gmail.com
    
    chsh -s /bin/bash
    export BASH_SILENCE_DEPRECATION_WARNING=1

    echo " "
    echo "---\ Completed downloading Package Managers /---"
    sleep 0.6
    clear

}