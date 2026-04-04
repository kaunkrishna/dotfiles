# KAUN's Dotfiles

<p align="center">
  <b>Arch Linux • Hyprland • Minimal Rice</b>
</p>

<p align="center">
  <i>Making it worse before it gets better.</i>
</p>

<p align="center">
  <img src="images/desktop.png" width="80%">
</p>

---

## Screenshots

### Desktop / Launcher / Lockscreen / Notifications

<p align="center">
  <img src="images/desktop.png" width="45%">
  <img src="images/launcher-rofi.gif" width="45%">
</p>

<p align="center">
  <img src="images/lockscreen-hyprlock.png" width="45%">
  <img src="images/notifications-swaync.gif" width="45%">
</p>

---

### Power Menu

<p align="center">
  <img src="images/powermenu-rofi.gif" width="45%">
</p>

---

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

Install everything with one command:

```bash
sudo pacman -S --needed hyprland kitty waybar rofi swaync swww wl-clipboard cliphist
```

> `--needed` ensures already installed packages are skipped (no reinstall)

---

## Fonts

* **Adwaita Sans** → system UI
* **JetBrains Mono Nerd Font** → terminal + icons

### Install Fonts (Arch)

```bash
sudo pacman -S --needed ttf-jetbrains-mono ttf-adwaita
```

---

## What's Customized

* **Hyprland:** keybinds, blur, animations, numlock
* **Waybar:** custom modules + CSS
* **Kitty:** Catppuccin theme, fonts, opacity
* **Rofi:** launcher + powermenu

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles
```

### 2. Backup your current config

```bash
mv ~/.config ~/.config-backup
```

### 3. Copy configs

```bash
cp -r * ~/.config/
```

### 4. Restart your session

Log out and log back in to apply changes.

---

## Notes

* Built for Arch + Hyprland
* May break on other setups
* Read configs before using

---

## Support

Star the repo if you like it ⭐

<p align="center">
  <i>rice > everything</i>
</p>
