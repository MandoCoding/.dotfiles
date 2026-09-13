--[[
# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃                         Source Files                        ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]--

-- main modifier
require("config.defaults")
require("config.hosts.laptop")


require("config.autostart")
require("config.environment")
require("config.keybinds")
require("config.layout")

require("config.styling")
require("config.windowrules")

-- booleans
ecosystem = {
  no_update_news = true,
  no_donation_nag = true,
}

