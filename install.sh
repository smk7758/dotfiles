#!/bin/sh -x

cd ~/

sudo perl -p -i.bak -e 's%https?://(?!security)[^ \t]+%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g' /etc/apt/sources.list

sudo apt update
sudo apt upgrade

# ln -sf ~/.dotfiles/vimrc ~/.vimrc
# ln -sf ~/.dotfiles/vim ~/.vim
# ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf

cat ./add_bashrc >> ~/.bashrc

# for WSL
./install_wsl.sh


