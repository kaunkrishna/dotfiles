# KAUN-FIGS (CONFIGS) - MATUGEN V1

## System Info

* **OS:** Arch Linux
* **WM:** Hyprland
* **Terminal:** Kitty
* **Shell:** Zsh
* **Bar:** Waybar
* **Launcher:** Rofi (Wayland fork)
* **Notifications:** SwayNC

---

## Dependencies

Make sure these core packages and utilities are installed:

* **Hyprland** — Window manager
* **Kitty** — Terminal emulator
* **Waybar** — Status bar
* **Rofi (Wayland)** — Application launcher, powermenu, and clipboard interface
* **SwayNC** — Notification daemon
* **Matugen** — Material UI colors generated from wallpapers
* **Neovim** — Terminal IDE
* **awww** — Wallpaper manager
* **wl-clipboard** — Wayland clipboard tools
* **cliphist** — Clipboard history
* **xdg-desktop-portal-hyprland** — Required for screen sharing on Wayland

# Install core dependencies from Arch Repositories
`sudo pacman -S --needed hyprland kitty waybar rofi-wayland swaync matugen neovim awww wl-clipboard cliphist xdg-desktop-portal-hyprland`

---

## Fonts

* **Adwaita Sans** → System UI
* **JetBrains Mono Nerd Font** → Terminal + Icons *(A Nerd Font is strictly required for the icons to render!)*
* **Apple Emoji** → Emojis *(You can substitute this with any emoji font)*

# Install core fonts
`sudo pacman -S --needed ttf-jetbrains-mono-nerd ttf-adwaita-sans`

# Install emojis from the AUR
`yay -S ttf-apple-emoji`

---

## Installation

### 1. Clone the Repository
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles

### 2. Backup Existing Configs
Don't overwrite your current setup without a backup!
mv ~/.config ~/.config-backup

### 3. Apply the New Configs
cp -r .config/* ~/.config/

### 4. Restart Your Session
Log out of Hyprland and log back in to apply all the changes and reload the daemons.

---

<br>
<p align="center">
  <i>Making it worse before it gets better.</i>
</p>
