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
* **awww / swww** — Wallpaper manager
* **wl-clipboard** — Wayland clipboard tools
* **cliphist** — Clipboard history
* **xdg-desktop-portal-hyprland** — Required for screen sharing on Wayland

### Official Arch Repositories
sudo pacman -S --needed hyprland kitty waybar rofi-wayland swaync neovim wl-clipboard cliphist xdg-desktop-portal-hyprland

### AUR Packages
*Note: You will need an AUR helper like yay or paru.*
yay -S --needed matugen-bin awww

---

## Fonts

* **Adwaita Sans** → System UI
* **JetBrains Mono Nerd Font** → Terminal + Icons *(A Nerd Font is strictly required for the icons to render!)*
* **Apple Emoji** → Emojis *(You can substitute this with any emoji font)*

# Install core fonts
sudo pacman -S --needed ttf-jetbrains-mono-nerd ttf-adwaita-sans

# Install emojis from the AUR
*Note: You will need an AUR helper like yay or paru.*
yay -S ttf-apple-emoji

---

## Get Started

### Clone the Repository
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles

---

<br>
<p align="center">
  <i>Making it worse before it gets better.</i>
</p>
