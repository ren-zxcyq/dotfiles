#!/bin/bash
# Install oh-my-zsh
# Install normally
#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Unattended install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
# Make zsh your default shell
chsh -s $(which zsh)
