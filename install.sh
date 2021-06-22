#!/bin/bash

source ./zsh/zshenv

# Pull submodules
git submodule update --init --recursive

# Install zsh
mkdir -p $ZDOTDIR;
ln -sf $DOTFILES/zsh/zshenv $HOME/.zshenv
ln -sf $DOTFILES/zsh/zshrc $ZDOTDIR/.zshrc

# Install other dotfiles
ln -sf $DOTFILES/nanorc $HOME/.nanorc
ln -sf $DOTFILES/inputrc $HOME/.inputrc

# Reload shell
exec zsh
