local terminal = "ghostty"
local menu = "rofi -show drun"
local fileManager = "ghostty --class=yazi -e yazi"
local floatingFileManager = "ghostty --class=yazi_float -e yazi"

-- exit Hyprland
hl.bind("SUPER + Q + H", hl.dsp.exit())

-- Lock screen
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))

-- System Keybinds
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))

-- open file Manager
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd(floatingFileManager))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))

-- Workspace Navigation
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))

-- Move Windows to Workspaces
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))

-- move workspace with mouse wheel
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e-1" }))

-- resize panes in workspace
-- Resize active window
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))

-- Shifting Focus
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))
-- screen shot
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- volume controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 5"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 5"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pamixer -t"))

-- brightness controls
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +5%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"))
