sudo pacman -Sy i3-gaps dmenu xorg-xinit xorg-server feh xorg-xrandr bash-completion gnu-free-fonts xclip --noconfirm
sudo pacman -Sy pulseaudio pavucontrol pulseaudio-alsa pulseaudio-bluetooth --noconfirm
sudo pacman -Sy speedtest-cli --noconfirm
aur-install gscreenshot
aur-install google-chrome
aur-install polybar
mkdir -p ~/.config/i3/
mkdir -p ~/.config/polybar/

rm -f ~/.config/i3/config
rm -rf ~/.config/polybar/

ln i3.d/i3/config ~/.config/i3/config
cp -r i3.d/polybar/* ~/.config/polybar

printf "exec i3\n" > ~/.xinitrc
printf "#!/bin/sh\nfeh --no-fehbg --bg-scale ~/util/Final.png\n" > ~/.fehbg
chmod +x ~/.fehbg
