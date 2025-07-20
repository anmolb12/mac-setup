#!/bin/bash

echo "🔧 Installing Xcode Command Line Tools..."
xcode-select --install 2>/dev/null

echo "🍺 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

echo "📦 Installing from Brewfile..."
brew bundle --file="$HOME/dotfiles/Brewfile"

echo "🔧 Configuring Git..."
read -p "Enter your Git name: " gitname
read -p "Enter your Git email: " gitemail
git config --global user.name "$gitname"
git config --global user.email "$gitemail"
