--[[ Layout rules ]]--
hl.config({
	general = {
    layout = "dwindle",
    snap = {
        enabled     = true,
        window_gap  = 10,
        monitor_gap = 10,
    },
	},
	
	misc = {
    enable_swallow = true,
    focus_on_activate = true,
    swallow_regex = "^(nautilus|btrfs-assistant.)$",
	},

	dwindle = {
    special_scale_factor = 0.8,
    preserve_split = true,
    }
})
