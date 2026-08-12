-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd('waybar')
  hl.exec_cmd("swaync")
  hl.exec_cmd("hypridle")

  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("wl-clip-persist --clipboard regular")

  hl.exec_cmd("cliphist wipe")

  hl.exec_cmd("discord --start-minimized")

  -- hl.exec_cmd("pywalfox start")
  -- hl.exec_cmd([[sh -c "sleep 2 && openrgb --profile ~/.config/OpenRGB/windows-xp.orp"]])
end)
