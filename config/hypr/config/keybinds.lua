--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                         Keybinds                            ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]--
--[[ ======= Launch Apps ======= ]]--
hl.bind(mainMod .. " + SPACE",  hl.dsp.exec_cmd(launcher))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E",  hl.dsp.exec_cmd(files))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(center))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd(statusbar))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(lockscreen))

--[[ ======= Modifiers ======= ]]--
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + A",  hl.dsp.exec_cmd(screenshotInt))
hl.bind(mainMod .. " + F",  hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + H",  hl.dsp.exec_cmd("pkill waybar || waybar"))

--[[ ======= Bluelight Control  ======= ]]--
hl.bind(mainMod .. " + G",          hl.dsp.exec_cmd("pkill hyprsunset || hyprsunset -t 2750"))
hl.bind(mainMod .. " + SHIFT + G",  hl.dsp.exec_cmd("hyprctl hyprsunset temperature +250"))
hl.bind(mainMod .. " + ALT + G",    hl.dsp.exec_cmd("hyprctl hyprsunset temperature -250"))

--[[ ======= OSD controls ======= ]]--
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

--[[ ======= Move Window actions  ======= ]]--
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up"}))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down"}))
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left"}))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right"}))

hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up"}))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down"}))
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left"}))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right"}))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.config({
    binds = {
        allow_workspace_cycles = true,
        workspace_back_and_forth = true,
        workspace_center_on = true,
        movefocus_cycles_fullscreen = true,
        window_direction_monitor_fallback = true,
    },
})

--[[
======= Resizing windows =======
# window resize mode
bindd = $mainMod, R, Activates window resizing mode, submap, resize
submap = resize
bindd = , right, Resize to the right (resizing mode), resizeactive, 15 0
bindd = , left, Resize to the left (resizing mode), resizeactive, -15 0
bindd = , up, Resize upwards (resizing mode), resizeactive, 0 -15
bindd = , down, Resize downwards (resizing mode), resizeactive, 0 15
bindd = , escape, Ends window resizing mode, submap, reset
submap = reset

# Quick resize window with keyboard
bindd = $mainMod CTRL SHIFT, right, Resize to the right, resizeactive, 15 0
bindd = $mainMod CTRL SHIFT, left, Resize to the left, resizeactive, -15 0
bindd = $mainMod CTRL SHIFT, up, Resize upwards, resizeactive, 0 -15
bindd = $mainMod CTRL SHIFT, down, Resize downwards, resizeactive, 0 15

# Resize window with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:273, resizewindow
bindm = $mainMod, mouse:272, movewindow

# Scroll through existing workspaces with mainMod + , or .
bindd = $mainMod, PERIOD, Scroll through workspaces incrementally, workspace, e+1
bindd = $mainMod, COMMA, Scroll through workspaces decrementally, workspace, e-1
# With $mainMod + scroll
bindd = $mainMod, mouse_down, Scroll through workspaces incrementally, workspace, e+1
bindd = $mainMod, mouse_up, Scroll through workspaces decrementally, workspace, e-1
bindd = $mainMod, slash, Switch to the previous workspace, workspace, previous
]]--
