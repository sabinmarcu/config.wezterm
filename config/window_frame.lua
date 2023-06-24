local wezterm = require("wezterm")

return function(config)
	config.window_frame = {
		font = wezterm.font({ family = "Roboto", weight = "Bold" }),
		font_size = 12.0,
		active_titlebar_bg = "#333333",
		inactive_titlebar_bg = "#333333",
	}
end
