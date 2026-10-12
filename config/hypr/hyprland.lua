--[[
# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃                         Source Files                        ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]--

-- main modifier
-- Shared configuration
require("config.defaults")
require("config.environment")
require("config.layout")
require("config.styling")
require("config.keybinds")
require("config.windowrules")
require("config.autostart")

-- Machine-specific configuration
local file = assert(io.open("/etc/hostname", "r"))
local hostname = file:read("*l")
file:close()

if hostname == "nixos-desktop" then
  require("config.hosts.work")
elseif hostname == "laptop" then
  require("config.hosts.laptop")
else
  -- Fallback for unknown machines
  hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
  })
end
-- booleans
ecosystem = {
  no_update_news = true,
  no_donation_nag = true,
}

