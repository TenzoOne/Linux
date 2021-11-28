#!/bin/sh

echo Installing zsh

sudo apt-get install zsh

echo installing powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


echo installing powerline fonts

sudo apt install fonts-powerline

echo implement by default  zsh 

chsh -s $(which zsh)

echo Ending initial terminal configuration 

echo installing Tweak

sudo apt-get install tweak

echo tweak installated
