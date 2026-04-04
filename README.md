# KAUN's Dotfiles

<p align="center">
  <b>Arch Linux • Hyprland • Minimal Rice</b>
</p>

<p align="center">
  <i>Making it worse before it gets better.</i>
</p>

<p align="center">
  <img src="images/main-desktop.png" width="80%">
</p>

---

## Styles

<table align="center">
<tr>
<td align="center" width="50%">
<b>Desktop</b><br><br>
<img src="images/main-desktop.png">
</td>

<td align="center" width="50%">
<b>Rofi Launcher</b><br><br>
<img src="images/rofi-launcher.png">
</td>
</tr>

<tr>
<td align="center">
<b>Hyprlock Lockscreen</b><br><br>
<img src="images/hyprlock-lockscreen.png">
</td>

<td align="center">
<b>SwayNC Notifications</b><br><br>
<img src="images/swaync-notifications.png">
</td>
</tr>

<tr>
<td align="center" colspan="2">
<b>Rofi Powermenu</b><br><br>
<img src="images/rofi-powermenu.png" width="50%">
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
* **Rofi** (application launcher)
* **SwayNC** (notification daemon)
* **awww** (wallpaper manager)
* **wl-clipboard** (Wayland clipboard tools)
* **cliphist** (clipboard history)

```bash id="s8k2qf"
sudo pacman -S --needed hyprland kitty waybar rofi swaync swww wl-clipboard cliphist
```

---

## Fonts

* **Adwaita Sans** → system UI
* **JetBrains Mono Nerd Font** → terminal + icons

```bash id="x2m8dl"
sudo pacman -S --needed ttf-jetbrains-mono ttf-adwaita
```

---

## Installation

### 1. Clone

```bash id="m1p9zx"
git clone https://github.com/kaunkrishna/dotfiles
cd dotfiles
```

### 2. Backup

```bash id="d2s7qp"
mv ~/.config ~/.config-backup
```

### 3. Apply configs

```bash id="g7k3zn"
cp -r * ~/.config/
```

### 4. Restart session

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
