# KAUN's Dotfiles (Arch + Hyprland)
Making it worse before it gets better!

This repository holds my daily-driver setup. I use **Arch Linux** (yes, I use Arch, btw) paired with the beautifully buttery **Hyprland** compositor.

---

## Required Packages
Before you blindly copy-paste these configs into your system (we have all been there), make sure you have these core packages installed to make everything work smoothly.

* **Window Manager:** [Hyprland](https://hyprland.org/)
* **Terminal Emulator:** Kitty
* **Status Bar:** Waybar
* **App Launcher:** Rofi
* **Notification Daemon:** SwayNC
* **Wallpaper Manager:** awww *(New name for swwww)*
* **Shell (Zsh/Bash):** I use Zsh btw!
* **For Clipboard:** wl-clipboard + cliphist + Rofi *(Yeah, rofi again!)*
* **Fonts:** Adwaita Sans and JetBrains Mono *(Any nerd font is must for the icons)*

---

## What's Customized? 
Here is a breakdown of the apps and tools I've actually tweaked in this repo. You can find all of these inside the respective folders—just drop them into your `~/.config/` directory!

* **Hyprland:** Custom keybinds, beautiful blur config, and (of course) default NumLock!
* **Waybar:** Custom modules for workspaces and system stats, complete with sleek CSS styling.
* **Kitty:** Typography settings, catppuccin color palette, and background opacity.
* **Rofi:** Themed application launcher and custom power-menu.

---

## Quick Start

1. Clone this repository to your machine: 
   ```bash
   git clone https://github.com/kaunkrishna/dotfiles.git 
   ```
2. **Back up your existing configs!** Seriously, don't overwrite your own stuff without a backup.
3. Symlink or copy the folders you want from here into your `~/.config/` directory.
