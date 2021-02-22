rm -f ~/.gitconfig
ln .gitconfig ~/.gitconfig
sudo pacman -Sy base-devel --noconfirm
sudo install -m 777 scripts/aur-install /usr/bin/aur-install
sudo install -m 777 scripts/auth-key /usr/bin/auth-key
cd desktop_env && ./install.sh
cd ../shell/alacritty && ./install.sh
cd ../install-pl10k && ./install-pl10k.sh
cd ../../vscode && ./make-me-a-sandwich.sh
cd ..
