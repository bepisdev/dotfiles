#!/bin/sh

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Set finder to show dotfiles
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew bundle ./Brewfile

# Run stow
stow -t $HOME home
