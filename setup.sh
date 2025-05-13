#!/bin/sh

# Disable .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Download package manifest
curl https://raw.githubusercontent.com/bepisdev/dotfiles/refs/heads/main/pkg.csv > /tmp/pkg.csv

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

# Create symlinks for dotfiles
DOTFILES_DIR="$HOME/Code/dotfiles"
pushd $DOTFILES_DIR
stow zsh -t $HOME
stow emacs -t $HOME
stow git -t $HOME
popd

# Run doom emacs setup utility
~/.emacs.d/bin/doom install
~/.emacs.d/bin/doom sync
