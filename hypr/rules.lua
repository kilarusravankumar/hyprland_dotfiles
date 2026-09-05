-- ============================================================
-- Layer Rules: Blur for Waybar, Rofi, SwayNC
-- ============================================================
hl.layer_rule({
	match = { namespace = "waybar" },
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	match = { namespace = "rofi" },
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	match = { namespace = "swaync-control-center" },
	blur = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = { namespace = "swaync-notification-window" },
	blur = true,
	ignore_alpha = 0.5,
})

-- ============================================================
-- Window Rules: Float utilities, PiP, yazi
-- ============================================================

-- Float common system dialogs
hl.window_rule({
	match = { class = "^(pavucontrol)$" },
	float = true,
	size = "700 450",
	center = true,
})

hl.window_rule({
	match = { class = "^(blueman%-manager)$" },
	float = true,
	center = true,
})

hl.window_rule({
	match = { class = "^(nm%-connection%-editor)$" },
	float = true,
	center = true,
})

-- Picture-in-Picture: always float, pin on top, keep aspect ratio
hl.window_rule({
	match = { title = "^(Picture%-in%-Picture)$" },
	float = true,
	pin = true,
	keep_aspect_ratio = true,
})

-- Floating yazi file manager
hl.window_rule({
	match = { class = "^(yazi_float)$" },
	float = true,
	size = "900 600",
	center = true,
})


