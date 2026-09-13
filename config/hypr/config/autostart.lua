--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                    Autostart Configuration                  ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

--[[  source = ~/.config/hypr/config/defaults.conf ]]

--[[ fixes ]]
hl.on("hyprland.start", function ()
	hl.exec_cmd("systemctl --user import-environment")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP GNOME_KEYRING_CONTROL SSH_AUTH_SOCK")
	hl.exec_cmd("/run/current-system/sw/bin/hyprpolkitagent")
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets,pkcs11,ssh")
end)

--[[ Hyprland Natives ]]
--[[ 
	hl.on("hyprland.start", function ()
	hl.exec_cmd("hyprpaper")
end)
]]--

--[[ Background services ]]
hl.on("hyprland.start", function ()
	hl.exec_cmd("fcitx5 -d")
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("swaync")
	hl.exec_cmd("swayosd-server")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("vicinae server")
end)
