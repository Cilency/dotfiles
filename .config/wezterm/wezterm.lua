-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha (Gogh)"
-- tab bar settings
config.use_fancy_tab_bar = true
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- window settings
config.enable_scroll_bar = false
config.initial_rows = 40
config.initial_cols = 120
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--[ backround settings
config.window_background_opacity = 0.6
config.macos_window_background_blur = 20
-- font settings
config.font = wezterm.font("ComicShannsMono Nerd Font")
config.font = wezterm.font_with_fallback({
	"ComicShannsMono Nerd Font",
	"Fira Code",
})
config.font_size = 16.0
-- config.window_background_image = '/path/to/wallpaper.jpg'
-- and finally, return the configuration to wezterm
return config
