local wezterm = require("wezterm")
return function(config)
	config.font = wezterm.font_with_fallback({
		"Operator Mono Lig",
		"MonoLisa Variable",
		"Symbols Nerd Font Mono",
	})
end
