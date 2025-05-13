#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Process package manifest
CSV_FILE="pkg.csv"
tail -n +2 "$CSV_FILE" | while IFS=',' read -r pkgname pkgtype clioptions
do
    echo "Installing Package: $pkgname"
    echo "----"

    case $pkgtype in
        "formula")
            brew install $pkgname $options
            ;;
        "cask")
            brew install --cask $pkgname $options
            ;;
        "git")
            git clone $pkgname $options
            ;;
    esac
done

# Link dotfiles with stow
DOTFILES_DIR="$HOME/Code/dotfiles"
(cd $DOTFILES_DIR && stow zsh -t $HOME)
