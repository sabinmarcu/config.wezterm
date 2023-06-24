return function(config)
	local pfile = io.popen("find ~/.config/wezterm/config -iname '*.lua' -type f")
	for filePath in pfile:lines() do
		local fileName = string.match(filePath, "([^%/]+).lua$")
		if fileName ~= "init" then
			require("config." .. fileName)(config)
		end
	end
	pfile:close()
end
