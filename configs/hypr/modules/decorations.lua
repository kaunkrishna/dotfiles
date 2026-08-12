-----------------------
---- LOOK AND FEEL ----
-----------------------

local colors = require("colors.colors")

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 12,

		border_size = 2,

		col = {
			active_border = colors.primary,
			inactive_border = colors.outline,
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = true,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			color = "rgba(00000066)",
		},

		blur = {
			enabled = true,
			size = 7,
			passes = 3,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- ---- MAC OS STYLE CURVES (SCROLLING OPTIMIZED) ----

-- Smooth ease-out for fades and workspace swiping
hl.curve("macEaseOut", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })

-- MacOS Window Spring (Pop-in)
hl.curve("macWindowSpring", { type = "spring", mass = 1, stiffness = 300, dampening = 25 })

-- NEW: Scrolling Spring. Tighter damping so scrolling stops crisply without wobbling.
hl.curve("macScrollSpring", { type = "spring", mass = 1, stiffness = 280, dampening = 35 })

-- ---- ANIMATIONS ----
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })

-- Window Creation/Destruction
hl.animation({ leaf = "windows", enabled = true, speed = 5, spring = "macWindowSpring" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, spring = "macWindowSpring", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "macEaseOut", style = "popin 80%" })

-- Target window movement specifically for the scrolling layout
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, spring = "macScrollSpring" })

-- Fades
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2, bezier = "macEaseOut" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "macEaseOut" })
hl.animation({ leaf = "fade", enabled = true, speed = 2.5, bezier = "macEaseOut" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "macEaseOut" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 6, bezier = "macEaseOut" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 6, bezier = "macEaseOut" })

-- Borders and Layers
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "macEaseOut" })
hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "macEaseOut" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "macEaseOut", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2, bezier = "linear", style = "fade" })