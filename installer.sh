#!/bin/sh

# Colors
Blue='\e[0;34m'         # Blue
White='\e[0;37m'        # Whitew


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



echo installing curl

sudo apt install curl

echo Updating system

sudo apt-get update

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

echo Installing neovim

sudo apt install neovim

echo installing neovim configurations
 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
              https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo " $white create and execute nvim nvim ~/.config/nvim/init.vim  or take repository configuration $white "
echo execute nvim and :PlugInstall


