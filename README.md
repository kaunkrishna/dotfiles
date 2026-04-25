# KAUN-FIGS (CONFIGS) - MATUGEN V1

<p align="center">
  <b>Arch Linux • Hyprland</b>
</p>

<p align="center">
  <i>Making it worse before it gets better.</i>
</p>

## System Info

* **OS:** Arch Linux
* **WM:** Hyprland
* **Terminal:** Kitty
* **Shell:** Zsh
* **Bar:** Waybar
* **Launcher:** Rofi
* **Notifications:** SwayNC

---

## Dependencies

Make sure these are installed:

* **Hyprland** (window manager)
* **Kitty** (terminal emulator)
* **Waybar** (status bar)
* **Rofi** (application launcher, powermenu, and clipboard interface)
* **SwayNC** (notification daemon)
* **awww** (wallpaper manager)
* **wl-clipboard** (Wayland clipboard tools)
* **cliphist** (clipboard history)
* **xdg-desktop-portal-hyprland** (required for screen sharing on Wayland, install if you use screen sharing)

```bash
sudo pacman -S --needed hyprland kitty waybar rofi swaync awww wl-clipboard cliphist xdg-desktop-portal-hyprland
```

---

## Fonts

* **Adwaita Sans** → system UI
* **JetBrains Mono Nerd Font** → terminal + icons (any nerd font is must for the icons)
* **ttf-apple-emoji** → Emojis (you can use any emoji font)

```bash
sudo pacman -S --needed ttf-jetbrains-mono ttf-adwaita
```

```bash
yay -S ttf-apple-emoji
```

---

## Installation

### 1. Clone

```bash
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles
```

### 2. Backup existing config

```bash
mv ~/.config ~/.config-backup
```

### 3. Apply configs

```bash
cp -r .config/* ~/.config/
```

### 4. Restart session

Log out and log back in to apply changes.

---

## Notes

* Built for Arch + Hyprland
* May not work on other setups
* Read configs before using

<p align="center">
  <i>rice > everything</i>
</p>
