-- ============================================================
-- General Settings
-- ============================================================
hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 2,
		col = {
			active_border = {
				colors = { "rgba(33ccffee)", "rgba(00ff99ee)" },
				angle = 45,
			},
			inactive_border = "rgba(565f8966)",
		},
		layout = "dwindle",
		allow_tearing = false,
	},
})

-- ============================================================
-- Decoration: Rounding, Opacity, Blur, Shadows
-- ============================================================
hl.config({
	decoration = {
		rounding = 12,
		active_opacity = 0.95,
		inactive_opacity = 0.85,

		dim_inactive = true,
		dim_strength = 0.15,

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			xray = true,
			vibrancy = 0.17,
		},

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			color = "rgba(00000044)",
		},
	},
})

-- ============================================================
-- Animations: Snappy curves with slight overshoot
-- ============================================================
hl.curve("overshot", {
	type = "bezier",
	points = { { 0.05, 0.9 }, { 0.1, 1.05 } },
})

hl.curve("snappy", {
	type = "bezier",
	points = { { 0.4, 0.0 }, { 0.2, 1.0 } },
})

hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "snappy" })
hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "overshot", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "snappy" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 20, bezier = "default", style = "loop" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "snappy" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "snappy", style = "slide" })
