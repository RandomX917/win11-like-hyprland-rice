# win11-like-hyprland-rice
A Win11 mock hyprland made with rofi, waybar and fish

Unlike most Hyprland configurations, this one does not require replacing your existing configuration files. Everything is contained inside its own directory and can be launched independently.

# Dependencies
* Hyprland
* Waybar
* Rofi
* Kitty
* awww(swww)
* Grim
* Slurp
* wl-copy

# Cloning
You should clone this as
``` git clone https://github.com/RandomX917/win11-like-hyprland-rice.git winconf``` as almost all its paths are pointed there.

# Portability
The whole config lives in a separate folder ~/winconf so you don't risk damaging your main config, and so its easier to uninstall.
# Runtime
You can launch this from the TTY(ctrl alt F1-F6) as
``` hyprland -c $HOME/winconf/hypr/hyprland.conf``` 

# Why did I choose to do it this way?
Mostly because I was inspired by an kali-undercover like tool but for hyprland, so you could use it in public environments without being called out.
