#!/bin/bash

git clone git@github.com:jamjnsn/dotfiles.git $HOME/.dotfiles

mkdir -p $HOME/.dotfiles
ln -s $HOME/.dotfiles/.rc $HOME/.rc
ln -s $HOME/.dotfiles/.nanorc $HOME/.nanorc
ln -s $HOME/.dotfiles/.scripts $HOME/.scripts

SHELL=$(grep ^$USER: </etc/passwd | cut -f 7 -d ":")

case $SHELL in
	/bin/zsh)
		echo "source \$HOME/.rc" >> $HOME/.zshrc
		echo "Appended .rc to ~/.zshrc"
		;;
	/bin/bash)
		echo "source \$HOME/.rc" >> $HOME/.bashrc
		echo "Appended .rc to ~/.bashrc"
		;;
	*)
		echo "Add .rc to your rc file"
		;;
esac
