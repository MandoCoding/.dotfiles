--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                  Environment Configuration                  ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

hl.env("HYPRCURSOR_THEME","MacTahoe")
hl.env("HYPRCURSOR_SIZE","24")

hl.env("QT_QPA_PLATFORM","wayland")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR","1")

hl.config({
	misc = {
    disable_hyprland_logo = true,
    }
})
