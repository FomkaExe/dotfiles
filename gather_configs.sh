mkdir -p ~/dotfiles/{hypr,nvim,bash,wofi,waybar,swaync}

rsync -av ~/.config/hypr/hyprland.conf ~/dotfiles/hypr/hyprland.conf
rsync -av ~/.config/hypr/hyprland.lua ~/dotfiles/hypr/hyprland.lua
cp ~/.bashrc ~/dotfiles/bash/.bashrc
rsync -av ~/.config/wofi/ ~/dotfiles/wofi/
rsync -av ~/.config/waybar/ ~/dotfiles/waybar/
rsync -av ~/.config/swaync/ ~/dotfiles/swaync
