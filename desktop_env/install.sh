sudo pacman -Sy i3-gaps i3status-rust dmenu xorg-xinit xorg-server feh xrandr --noconfirm
sudo pacman -Sy pulseaudio pavucontrol pulseaudio-alsa pulseaudio-bluetooth --noconfirm
aur_install gscreenshot
mkdir ~/.config/i3/
mkdir ~/.config/i3status-rust/

rm -f ~/.config/i3/config
rm -f ~/.config/i3status-rust/config.toml

ln i3.d/i3/config ~/.config/i3/config
ln i3.d/i3status-rust/config.toml ~/.config/i3status-rust/config.toml

printf "exec i3\n" > ~/.xinitrc
printf "#!/bin/sh\nfeh --no-fehbg --bg-scale '~/util/Final.png'\n" > ~/.fehbg
chmod +x ~/.fehbg
