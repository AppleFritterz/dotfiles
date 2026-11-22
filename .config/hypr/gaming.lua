---------------
----Gaming-----
---------------

return function(settings)
    hl.window_rule({
        name  = "xwayland-float-and-fullscreen",
        match = { xwayland = 1 },
        float = true,
        fullscreen = true,
    })
end
