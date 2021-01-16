mkdir ~/.config/i3/
mkdir ~/.config/i3status-rust/

ln i3.d/i3/config ~/.config/i3/config
ln i3.d/i3status-rust/config.toml ~/.config/i3status-rust/config.toml

printf "#!/bin/sh\nfeh --no-fehbg --bg-scale '/home/andre/util/Final.png'" > ~/.fehbg
chmod +x ~/.fehbg
