#!/bin/bash

# terminal alacritty
mkdir -p ~/.config/alacritty
ln -sfnv $PWD/config/alacritty.yml   ~/.config/alacritty/alacritty.yml

# vim
ln -sfnv $PWD/config/vimrc   ~/.vimrc

# idea vim plugin
ln -sfnv $PWD/config/ideavimrc   ~/.ideavimrc

# maven
mkdir -p ~/.m2
ln -sfnv $PWD/config/maven-settings.xml   ~/.m2/settings.xml

# tmux
ln -sfnv $PWD/config/tmux.conf   ~/.tmux.conf

# fish
mkdir -p ~/.config/fish
ln -sfnv $PWD/config/config.fish ~/.config/fish/config.fish

echo -e "\nDone."
