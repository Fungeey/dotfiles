#!/bin/bash

# create symlinks

# zshrc
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc

# termux.properties
ln -nfs $HOME/dotfiles/termux.properties $HOME/.termux/termux.properties

# Neofetch 
ln -nfs $HOME/dotfiles/config.conf $HOME/.config/neofetch/config.conf

ln -nfs $HOME/dotfiles/brain.txt $HOME/.config/neofetch/brain.txt

# neovim

ln -nfs $HOME/dotfiles/init.lua $HOME/.config/nvim/init.lua

find $HOME -xtype l
