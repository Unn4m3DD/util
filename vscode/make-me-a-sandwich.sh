sudo pacman -Sy ttf-fira-code

rm -f /home/$(whoami)/.config/Code/User/keybindings.json 
rm -f /home/$(whoami)/.config/Code/User/settings.json
rm -f /home/$(whoami)/.ssh/config

ln keybindings.json /home/$(whoami)/.config/Code/User/keybindings.json 
ln settings.json /home/$(whoami)/.config/Code/User/settings.json
code --install-extension ms-vscode-remote.remote-ssh
ln ssh /home/$(whoami)/.ssh/config
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension oderwat.indent-rainbow
code --install-extension ms-vscode.cpptools
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension pkief.material-icon-theme
code --install-extension coolbear.systemd-unit-file
code --install-extension dpkristensen-garmin.udev-rules
code --install-extension streetsidesoftware.code-spell-checker 
#code --install-extension 








