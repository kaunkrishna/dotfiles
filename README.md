# ⚠️ CURRENTLY INTEGRATING MATUGEN TO THE SETUP!

---

# KAUN-FIGS (CONFIGS)

<p align="center">
  <b>Arch Linux • Hyprland</b>
</p>

<p align="center">
  <i>Making it worse before it gets better.</i>
</p>

<p align="center">
  <img src="images/main-desktop.png" width="80%">
</p>

---

## Images

<table align="center">
<tr>
<td align="center" width="50%">
<b>Desktop</b><br>
<img src="images/main-desktop.png">
</td>

<td align="center">
<b>Hyprlock Lockscreen</b><br>
<img src="images/hyprlock-lockscreen.png">
</td>
</tr>

<tr>
<td align="center" width="50%">
<b>Rofi Launcher</b><br>
<img src="images/rofi-launcher.png">
</td>

<td align="center">
<b>Rofi Powermenu</b><br>
<img src="images/rofi-powermenu.png">
</td>
</tr>

<tr>
<td align="center" colspan="2">
<b>SwayNC Notifications</b><br>
<img src="images/swaync-notifications.png" width="50%">
</td>
</tr>
</table>

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
