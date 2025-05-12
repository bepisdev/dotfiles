#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Process package manifest
CSV_FILE="pkg.csv"
tail -n +2 "$CSV_FILE" | while IFS=',' read -r pkgname type options
do
    echo "Column 1: $pkgname"
    echo "Column 2: $type"
    echo "Column 3: $options"
    echo "----"
done

