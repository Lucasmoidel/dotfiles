#!/bin/bash

distro=$(eval grep 'NAME="Arch Linux"' /etc/os-release | grep -v "PRETTY" | sed 's/NAME=//' | sed  's/"//g')


cp * ~/ -r
cp .* ~/ -r
cd ~/
git clone https://github.com/ohmyzsh/ohmyzsh.git
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo chsh -s "$zsh" "$USER"


rm -rf dotfiles
rm install.sh
