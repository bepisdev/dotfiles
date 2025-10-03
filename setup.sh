#!/bin/sh

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew
brew bundle ./Brewfile

stow zsh -t "$HOME"
stow git -t "$HOME"
stow wezterm -t "$HOME"
