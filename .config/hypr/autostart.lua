---------------
---Autostart---
---------------
return function(settings)
    hl.on("hyprland.start", function ()
        hl.exec_cmd(settings.terminal)
        hl.exec_cmd(settings.statusbar)
        hl.exec_cmd("hyprpolkitagent")
        hl.exec_cmd(settings.wallpaper)
        hl.exec_cmd(settings.notifyd)
    end)
end
