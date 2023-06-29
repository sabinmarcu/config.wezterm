local wezterm = require("wezterm")

return function(config)
	config.window_frame = {
		font = wezterm.font({ family = "MonoLisa Nerd Font", weight = "Bold" }),
		font_size = 12.0,
	}

	local status, theme = pcall(require, "theme")
	if status then
		theme(config)
	end
end
