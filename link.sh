/bin/bash


# create symlinks
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc

ln -nfs $HOME/dotfiles/termux.properties $HOME/.termux/termux.properties


find $HOME -xtype l

