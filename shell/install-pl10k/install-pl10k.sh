if [[ $1 == "-h" ]]; then
	echo "usage: install-pl10k [install command]"
fi
mkdir ~/.fonts
cp ./fonts/* ~/.fonts
fc-cache -f -v
sudo pacman -S zsh

sudo curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo sh install.sh
sudo mv /root/.oh-my-zsh /home/.oh-my-zsh
sudo git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-/home/.oh-my-zsh/custom}/themes/powerlevel10k

ln .zshrc ~/.zshrc
ln .p10k.zsh ~/.p10k.zsh
source ~/.zshrc


