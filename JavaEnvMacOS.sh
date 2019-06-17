#!/bin/sh
echo "Installing Command Line Tools for XCode..."
xcode-select --install

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "Installing CLI tools..."
brew coreutils
brew install git
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew install maven

echo "Installing editors & IDE..."
brew cask install sts