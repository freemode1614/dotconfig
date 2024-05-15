-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font = wezterm.font("Mononoki Nerd Font Mono")
config.font_size = 20.0
config.color_scheme = "Tokyonight"
config.window_padding = {
	left = 10,
	right = 0,
	top = 4,
	bottom = 1,
}
config.cursor_blink_rate = 800
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.8
-- config.window_background_image = "/Users/wenpeng.lei/Downloads/cai-carney-deaqEVtdSgk-unsplash.jpg"
config.macos_window_background_blur = 20
config.front_end = "WebGpu"
config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- ssh domains
config.ssh_domains = {
	{
		name = "aliyun",
		remote_address = "47.108.64.243",
		username = "wpl",
	},
}

return config
