local wezterm = require("wezterm")

return function()
	local previousIncrement = nil

	local mutateFontSize = function(window, pane, increment)
		local value = increment
		while value ~= 0 do
			if value > 0 then
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				value = value - 1
			else
				window:perform_action(wezterm.action.DecreaseFontSize, pane)
				value = value + 1
			end
		end
	end

	wezterm.on("user-var-changed", function(window, pane, name, value)
		local overrides = window:get_config_overrides() or {}
		if name == "ZEN_MODE" then
			local incremental = value:find("+")
			local number_value = tonumber(value)
			if incremental ~= nil then
				if number_value > 0 then
					previousIncrement = number_value
					mutateFontSize(window, pane, number_value)
				end
			elseif number_value < 0 then
				mutateFontSize(window, pane, 0 - previousIncrement)
				overrides.font_size = nil
				previousIncrement = nil
			else
				overrides.font_size = number_value
			end
		end
		window:set_config_overrides(overrides)
	end)
end
