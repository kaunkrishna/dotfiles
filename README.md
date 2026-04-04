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

### Desktop / Launcher

<p align="center">
  <img src="images/desktop.png" width="45%">
  <img src="images/launcher-rofi.gif" width="45%">
</p>

---

### Lockscreen / Notifications

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

* hyprland
* kitty
* waybar
* rofi
* swaync
* swww
* wl-clipboard
* cliphist

---

## Fonts

* **Adwaita Sans** → system UI
* **JetBrains Mono Nerd Font** → terminal + icons

### Install Fonts (Arch)

```bash id="jiv2wb"
sudo pacman -S ttf-jetbrains-mono ttf-adwaita
```

---

## What's Customized

* **Hyprland:** keybinds, blur, animations, numlock
* **Waybar:** custom modules + CSS
* **Kitty:** Catppuccin theme, fonts, opacity
* **Rofi:** launcher + powermenu

---

## Installation

```bash id="h9qj92"
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles
mv ~/.config ~/.config-backup
cp -r * ~/.config/
```

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
