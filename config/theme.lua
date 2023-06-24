local wezterm = require("wezterm")

return function(config)
	config.colors = {
		ansi = {
			"#292d3e",
			"#ff5370",
			"#c3e88d",
			"#ffcb6b",
			"#82aaff",
			"#c792ea",
			"#89ddff",
			"#a6accd",
		},
		brights = {
			"#434758",
			"#ff8b92",
			"#ddffa7",
			"#ffe585",
			"#9cc4ff",
			"#e1acff",
			"#a3f7ff",
			"#ffffff",
		},
		background = "#252837",
		cursor_bg = "#bfc7d5",
		cursor_border = "#bfc7d5",
		cursor_fg = "#232534",
		foreground = "#a6accd",
	}
	config.window_frame = {
		font = wezterm.font({ family = "MonoLisa Nerd Font", weight = "Bold" }),
		font_size = 12.0,
		active_titlebar_bg = "#252837",
		inactive_titlebar_bg = "#232534",
	}

	wezterm.set_environment_variables = {
		THEME_BACKGROUND = config.colors.background,
	}
end
