#!/bin/bash

# Path to your keybinds module
KEYBINDS_FILE="$HOME/.config/hypr/modules/keybinds.lua"

# Check if the current mod is SUPER
if grep -q 'local mainMod = "SUPER"' "$KEYBINDS_FILE"; then
  # Swap to ALT
  sed -i 's/local mainMod = "SUPER"/local mainMod = "ALT"/' "$KEYBINDS_FILE"
  notify-send -t 2000 "Hyprland" "Modifier toggled to: ALT"
else
  # Swap back to SUPER
  sed -i 's/local mainMod = "ALT"/local mainMod = "SUPER"/' "$KEYBINDS_FILE"
  notify-send -t 2000 "Hyprland" "Modifier toggled to: SUPER"
fi

# Reload Hyprland to apply the new Lua state
hyprctl reload
