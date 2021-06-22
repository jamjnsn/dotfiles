#!/bin/zsh

ln -sf $PWD/zsh/zshenv $HOME/.zshenv
source $HOME/.zshenv

ln -sf $DOTFILES/zsh/zshrc $ZDOTDIR/.zshrc
ln -sf $DOTFILES/nanorc $ZDOTDIR/.nanorc
ln -sf $DOTFILES/inputrc $ZDOTDIR/.inputrc