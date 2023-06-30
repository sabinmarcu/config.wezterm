local wezterm = require("wezterm")

return function(config)
	config.window_frame = {
		font = wezterm.font_with_fallback({
			"MonoLisa Variable",
			"Symbols Nerd Font Mono",
		}),
		font_size = 15.0,
		active_titlebar_bg = "#333333",
		inactive_titlebar_bg = "#333333",
	}
	config.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
	config.window_decorations = "RESIZE"
end
