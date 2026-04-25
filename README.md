# KAUN-FIGS (CONFIGS) - MATUGEN V1

---

### Dependencies

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

```bash
sudo pacman -S --needed hyprland kitty waybar rofi-wayland swaync matugen neovim awww wl-clipboard cliphist xdg-desktop-portal-hyprland
```

### Fonts

* **Adwaita Sans** → System UI
* **JetBrains Mono Nerd Font** → Terminal + Icons *(A Nerd Font is strictly required for the icons to render!)*
* **Apple Emoji** → Emojis *(You can substitute this with any emoji font)*

```bash
sudo pacman -S --needed ttf-jetbrains-mono-nerd ttf-adwaita-sans
yay -S ttf-apple-emoji
```

### Get Started

#### Clone the Repository
```bash
git clone [https://github.com/kaunkrishna/dotfiles](https://github.com/kaunkrishna/dotfiles)
cd dotfiles
```
---
<br>
<p align="center">
  <i>Making it worse before it gets better.</i>
</p>
