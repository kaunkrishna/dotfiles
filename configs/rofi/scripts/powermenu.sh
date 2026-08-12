#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Modified for Hyprland

# Current Theme
dir="$HOME/.config/rofi/powermenu/"
theme='style'

# CMDs
uptime="$(uptime -p | sed -e 's/up //g')"
host="$(hostname)"

# Options
shutdown='Shutdown'
reboot='Reboot'
lock='Lock'
suspend='Suspend'
logout='Logout'
yes='Yes'
no='No'

# Rofi CMD
rofi_cmd() {
  rofi -dmenu \
    -i \
    -p "" \
    -mesg "<i>Uptime: $uptime</i>" \
    -theme ${dir}/${theme}.rasi
}

# Confirmation CMD
confirm_cmd() {
  rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 350px;}' \
    -theme-str 'mainbox {children: [ "message", "listview" ];}' \
    -theme-str 'listview {columns: 2; lines: 1;}' \
    -theme-str 'element-text {horizontal-align: 0.5;}' \
    -theme-str 'textbox {horizontal-align: 0.5;}' \
    -dmenu \
    -p 'Confirmation' \
    -mesg '<b>Are You Sure?</b>' \
    -theme ${dir}/${theme}.rasi
}

# Ask for confirmation
confirm_exit() {
  echo -e "$yes\n$no" | confirm_cmd
}

# Show menu
run_rofi() {
  echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
  selected="$(confirm_exit)"
  if [[ "$selected" == "$yes" ]]; then
    case "$1" in
    --shutdown)
      systemctl poweroff
      ;;
    --reboot)
      
      systemctl reboot
      ;;
    --suspend)
      systemctl suspend
      ;;
    --logout)
      hyprctl dispatch exit
      ;;
    esac
  else
    exit 0
  fi
}

# Actions
chosen="$(run_rofi)"
case "$chosen" in
"$shutdown")
  run_cmd --shutdown
  ;;
"$reboot")
  run_cmd --reboot
  ;;
"$lock")
  hyprlock
  ;;
"$suspend")
  run_cmd --suspend
  ;;
"$logout")
  run_cmd --logout
  ;;
esac
