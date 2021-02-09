#!/usr/bin/env zsh 

echo "HELLO FROM SETUP_HOMEBREW.ZSH"

sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle
