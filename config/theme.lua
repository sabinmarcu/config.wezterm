local wezterm = require("wezterm")

return function(config)
	local status, theme = pcall(require, "theme")
	if status then
		theme(config)
	end
end
