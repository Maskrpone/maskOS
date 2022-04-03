#!/bin/bash

echo "Configuration en cours"
echo "Veuillez saisir votre mot de passe" 
echo "Nous allons réaliser une mise à jour."

sudo pacman -Syu

echo "Nous allons installer les paquets de base"

sudo pacman -S alacritty bluez bluez-utils blueman sof-firmware alsa-utils base-devel git vim neovim curl wget

echo "Installation de yay"

git clone https://aur.archlinux.org/yay-git.git

cd yay-git/

makepkg -si

cd .. && rm -fr yay-git/
echo "Nous installons les applications dont vous aurez besoin"

sudo pacman -S bitwarden warpinator firefox discord fish flameshot ranger htop sagemath zsh elinks ffmpegthumbnailer highlight libcaca lynx mediainfo odt2txt perl-image-exiftool poppler python-chardet ueberzug w3m
yay -S visual-studio-code-bin brave-nightly-bin nerd-fonts-jetbrains-mono

echo "configuration de vos dossiers de travail"
cd $HOME/Documents/
mkdir github
cd github/

git clone https://github.com/Maskrpone/dotfiles.git

cd ..

git clone https://github.com/Maskrpone/ISEN.git

echo "Importation de vos fonds d'écran"
cd $HOME/Pictures

git clone https://github.com/Maskrpone/wallpapers.git

echo "Préparation de git"

git config --global user.email "deparis.hipp@gmail.com"
git config --global user.name "Maskrpone"


echo "Préparation du shell fish"

./cffish.fish 

cp -r $HOME/Documents/github/dotfiles/config/nvim $HOME/.config/
cp -r $HOME/Documents/github/dotfiles/config/alacritty $HOME/.config/
cp -r $HOME/Documents/github/dotfiles/config/ranger $HOME/.config/

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

chsh -s /usr/bin/fish maskrpone


