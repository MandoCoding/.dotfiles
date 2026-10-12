--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                      Input Configuration                    ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

hl.config({
    input = {
        kb_layout = "de",
        follow_mouse = 2,
        float_switch_override_focus = 2,
    },

    render = {
        direct_scanout = 1,
    },
})


--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                     Monitor Configuration                   ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

-- Left: DVI
hl.monitor({
    output = "DVI-D-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1,
})

-- Center: VGA (HDMI-A-2)
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "1920x0",
    scale = 1,
})

-- Right: HDMI
hl.monitor({
    output = "HDMI-A-2",
    mode = "1920x1080@60",
    position = "3840x0",
    scale = 1,
})

hl.env("GDK_SCALE", "1.0")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")