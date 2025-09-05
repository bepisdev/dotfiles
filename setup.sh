#!/bin/sh

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew
brew bundle ./Brewfile

# Install dotfile packages
mkdir -p "$HOME/.config/nvim"

stow zsh -t "$HOME"
stow git -t "$HOME"
stow nvim -t "$HOME/.config/nvim"
