hl.monitor({
	output = "DP-1",
	mode = "1920x1080@164.92Hz",
	position = "auto",
	scale = "1.0",
})

hl.monitor({
	output = "DP-2",
	mode = "1920x1200@100.00Hz",
	position = "auto",
	scale = "1.0",
})
-- Pin workspaces
-- Pin workspaces 1-3 to DP-1
hl.workspace_rule({ workspace = "1", monitor = "DP-1" })
hl.workspace_rule({ workspace = "2", monitor = "DP-1" })
hl.workspace_rule({ workspace = "3", monitor = "DP-1" })

-- Pin workspaces 4-6 to DP-2
hl.workspace_rule({ workspace = "4", monitor = "DP-2" })
hl.workspace_rule({ workspace = "5", monitor = "DP-2" })
hl.workspace_rule({ workspace = "6", monitor = "DP-2" })
