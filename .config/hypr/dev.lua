---------------
------DEV------
---------------

return function(settings)
    hl.window_rule({
        name  = "qemu-float-and-full",
        match = { class = "qemu" },
        float = true,
        fullscreen = true,
    })
    hl.window_rule({
        match = { class = "kitty" },
        no_blur = true,
    })
end
