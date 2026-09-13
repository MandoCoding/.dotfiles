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

hl.monitor({
    output = "eDP-2",
    mode = "preferred",
    position = "0x0",
    scale = 1.33,
    vrr = 2,
})

hl.env("GDK_SCALE", "1.0")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")