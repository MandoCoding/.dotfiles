--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                   Animations Configuration                   ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

--[[ bezier = overshot, 0.13, 0.99, 0.29, 1.1 ]]
hl.animation({ leaf = "border", enabled = true, speed = 5, curve = default, style = STRING, bezier = "default" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, curve = overshot, style = slide,  bezier = "default"})
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, curve = default, style = "popin 80%",  bezier = "default" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 6, curve = overshot, style = slide,  bezier = "default" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 6, curve = overshot, style = "slidefade 80%",  bezier = "default" })

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                     Colors Configuration                     ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

--[[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                     Window Configuration                    ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
]]

hl.config({
	misc = {
    font_family =        "Fira Sans",
    splash_font_family = "Fira Sans",
	},
	
	general = { 
		border_size = 0,
   		gaps_in     = 3,
	    gaps_out    = 0,
	    float_gaps  = 0,
	},

	decoration = {
	    active_opacity      = 1.0,
    	inactive_opacity    = 1.0,
    	rounding            = 10,

		blur ={
        	enabled = true,
        	xray    = true,
        	passes  = 4,
    	},

	    shadow = {
	        enabled = true,
	        scale   = 1.0,
	        range   = 4,
    	},
	}
})

--[[
workspace = , gapsout:5, gapsin:3
workspace = f[1], gapsout:5, gapsin:3
]]--
