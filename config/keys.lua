return function(config)
	local status, theme = pcall(require, "keymap")
	if status then
		theme(config)
	end
end
