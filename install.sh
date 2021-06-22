#!/bin/bash

source ./zsh/zshenv

# Install zsh
mkdir -p $ZDOTDIR;
ln -sf $DOTFILES/zsh/zshenv $HOME/.zshenv
ln -sf $DOTFILES/zsh/zshrc $ZDOTDIR/.zshrc

# Install other dotfiles
ln -sf $DOTFILES/nanorc $HOME/.nanorc
ln -sf $DOTFILES/inputrc $HOME/.inputrc

# Install Homebrew
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
    mkdir -p $HOMEBREW/bin
    ln -s $HOMEBREW/Homebrew/bin/brew $HOMEBREW/bin
fi

# Install Homebrew packages
brew install zsh

brew tap cantino/mcfly
brew install mcfly

# Reload shell
exec zsh
