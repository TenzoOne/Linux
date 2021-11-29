#!/bin/bash

# Colors
Blue='\e[0;34m'         # Blue
White='\e[0;37m'        # Whitew

function TenzoOneLogo()
{
echo ""
sleep 0.1
echo -e $Blue "${white}................................................................${white}"
sleep 0.1
echo -e "$white    __                             ________ $white "
sleep 0.1
echo -e "$white  _/  |_  ____   ____ ____________ \_____  \   ____   ____ $white  "
sleep 0.1
echo -e "$white  \   __\/ __ \ /    \\___   /  _ \ /   |   \ /    \_/ __ \ $white"
sleep 0.1
echo -e "$white   |  | \  ___/|   |  \/    (  <_> )    |    \   |  \  ___/ $white"
sleep 0.1
echo -e "$white   |__|  \___  >___|  /_____ \____/\_______  /___|  /\___  > $white"
sleep 0.1
echo -e "$white             \/     \/      \/             \/     \/     \/ $white"
echo -e $Blue "${white}................................................................${white}"
echo -e "| [!]  | TenzoOne's Configuration | Ver.0.1  |"
}

function Curl
{
sudo apt install curl
}


function Zsh
{
sudo apt install zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
chsh -s $(which zsh)
}

function Tweak
{
sudo apt-get install tweak
}


function NeoVim
{
sudo apt install neovim
Curl
echo installing neovim configurations
 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
              https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo " $white create and execute nvim nvim ~/.config/nvim/init.vim  or take repository configuration $white "
echo execute nvim and :PlugInstall
}

function End
{
echo "CREATED BY TenzoOne"
echo
sleep 1
exit
}


#Menu

while :
do
clear
TenzoOneLogo
echo -e "                                                      "
echo -e "		 MENU"
echo -e "                           			       "
echo -e "	    Select an option
 [1]   NeoVim 
 [2]   Tweak
 [3]   Zsh

     q) exit"

echo
echo -en "Select :"
read option
case $option in
1)NeoVim;;
2)Tweak;;
3)Zsh;;
q)End;;
*) echo " \"$option\" Is Not A Valid Option"; sleep 1 ;;
esac

done


