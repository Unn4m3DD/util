ls | grep -v "pull" | xargs -i sh -c "printf '{}: ' && cd {} && git pull && makepkg -si --noconfirm"
