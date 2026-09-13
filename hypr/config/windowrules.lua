--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                    Windowrules Configuration                ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

hl.window_rule({
    name = "Floating Windows",
    match = {
        title = "^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$|(.*Bluetooth.*)$|Picture in picture|Save File|Open File|.*Network Manager.*",
        class = "(blueman-manager|org%.pulseaudio%.pavucontrol|polkit%-gnome%-authentication%-agent%-1|hyprpolkitagent|org%.kde%.polkit%-kde%-authentication%-agent%-1|zenity|be%.alexandervanhee%.gradia|nm gui)$",
    },
    float = true,
    size = { 960, 540 },
    move = { "monitor_w * 0.25", "monitor_h * 0.25" },
})

hl.window_rule({
    match = { title = "^danmufloat$" },
    pin = true,
})

hl.window_rule({
    match = { float = false },
    border_size = 0,
    rounding = 4,
})

hl.layer_rule({
    match = { namespace = "^waybar$" },
    animation = "slide down",
    blur = true,
})

hl.layer_rule({
    match = { namespace = "^wallpaper$" },
    animation = "fade 50%",
})

hl.layer_rule({
    match = { namespace = "^(rofi|vicinae|swaync%-control%-center|swaync%-notification%-window)$" },
    blur = true,
    ignore_alpha = 0,
})


hl.config({
    decoration = {
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            noise = 0.0117,
            contrast = 0.8916,
            brightness = 1.0,
            vibrancy = 0.1696,
            vibrancy_darkness = 0.0,
            special = false,
            popups = false,
            popups_ignorealpha = 0.2,
            input_methods = false,
            input_methods_ignorealpha = 0.2,
        },
    },
})
