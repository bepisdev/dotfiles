#!/bin/sh

# Update macOS defaults
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteCDStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteLocalStores -bool TRUE
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
killall Finder

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew bundle ./Brewfile

# Set zsh as the default shell
chsh -s /bin/zsh

# Run stow
stow -t $HOME home

# Download wallpapers
git clone https://github.com/bepisdev/wallpapers.git $HOME/Pictures/wallpapers
