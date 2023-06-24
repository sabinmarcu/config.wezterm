local wezterm = require("wezterm")
return function(config)
	config.font = wezterm.font_with_fallback({
		"MonoLisa Variable",
		"Symbols Nerd Font Mono",
	})
end
