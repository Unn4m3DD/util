mkdir ~/.fonts
cp ./fonts/* ~/.fonts
fc-cache -f -v
sudo pacman -Sy zsh

sudo curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo sh install.sh
sudo mv /root/.oh-my-zsh /home/.oh-my-zsh
sudo git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-/home/.oh-my-zsh/custom}/themes/powerlevel10k

rm -f ~/.zshrc
rm -f ~/.p10k.zsh

ln .zshrc ~/.zshrc
ln .p10k.zsh ~/.p10k.zsh
source ~/.zshrc


