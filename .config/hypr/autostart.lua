---------------
---Autostart---
---------------

hl.on("hyprland.start", function ()
    hl.exec_cmd("ironbar")
    hl.exec_cmd("hyprpolkitagent")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("mako")
end)
