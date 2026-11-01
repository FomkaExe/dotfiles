mkdir -p ~/Dotfiles/{hypr,bash,wofi,waybar,swaync}

rsync -av ~/.config/hypr/hyprland.lua ~/Dotfiles/hypr/hyprland.lua
cp ~/.bashrc ~/Dotfiles/bash/.bashrc
rsync -av ~/.config/wofi/ ~/Dotfiles/wofi/
rsync -av ~/.config/waybar/ ~/Dotfiles/waybar/
rsync -av ~/.config/swaync/ ~/Dotfiles/swaync
