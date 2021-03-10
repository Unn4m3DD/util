rm -f ~/.gitconfig
ln .gitconfig ~/.gitconfig
sudo pacman -Sy base-devel --noconfirm
sudo pacman -Sy networkmanager network-manager-applet --noconfirm
sudo systemctl start NetworkManager
sudo systemctl enable NetworkManager
sudo systemctl start bluetooth
sudo systemctl enable bluetooth
sudo install -m 777 scripts/aur-install /usr/bin/aur-install
sudo install -m 777 scripts/auth-key /usr/bin/auth-key

c_dir=$(pwd)
cd $c_dir/desktop_env && ./install.sh
cd $c_dir/shell/alacritty && ./install.sh
cd $c_dir/shell/install-pl10k && ./install-pl10k.sh
cd $c_dir/vscode && ./make-me-a-sandwich.sh
cd $c_dir
