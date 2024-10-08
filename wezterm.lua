local wezterm = require("wezterm")
local os = require("os")
local config = {}

function os.capture(cmd)
	local f = assert(io.popen(cmd, "r"))
	local s = assert(f:read("*a"))
	f:close()
	return s
end

local isMac = os.capture("uname") == "Darwin\n"

config = {
	font = wezterm.font("MonoLisa", { weight = "Medium" }),
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	font_size = 12.0,
	enable_tab_bar = false,
	scrollback_lines = 10000,
	enable_scroll_bar = false,
	-- window_background_opacity = 0.9,
	color_scheme = "Catppuccin Mocha",
	background = {
		{
			source = {
				File = "/home/apoorv/.config/wezterm/bg/luffy-gear-5-egghead-op.jpg",
			},
			width = "100%",
			height = "100%",
			repeat_x = "NoRepeat",
			repeat_y = "NoRepeat",
			horizontal_align = "Center",
			hsb = {
				brightness = 0.1,
				hue = 1.0,
				saturation = 1.0,
			},
		},
	},
}

if isMac then
	config.font_size = 18
	config.background[1].source.File = "/Users/work/.config/wezterm/bg/yone.jpeg"
end

return config
