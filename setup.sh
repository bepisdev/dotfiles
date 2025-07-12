#!/bin/sh

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Download package manifest
curl https://raw.githubusercontent.com/bepisdev/dotfiles/refs/heads/main/pkg.csv > /tmp/pkg.csv

# Create directories for later use
mkdir $HOME/Code
mkdir -p $HOME/.config/nvim

# Process package manifest
CSV_FILE="/tmp/pkg.csv"
tail -n +2 "$CSV_FILE" | while IFS=',' read -r pkgname pkgtype clioptions
do
    echo "Installing Package: $pkgname"
    echo "----"

    case $pkgtype in
        "formula")
            brew install $pkgname $clioptions
            ;;
        "cask")
            brew install --cask $pkgname $clioptions
            ;;
        "git")
            git clone $pkgname $clioptions
            ;;
    esac
done

# Install dotfile packages
pushd $HOME/Code/dotfiles
stow zsh -t $HOME
stow git -t $HOME
stow nvim -t $HOME/.config/nvim
popd
