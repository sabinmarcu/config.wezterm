local wezterm = require("wezterm")
local act = wezterm.action

local tmuxKeys = {
	{ key = "e", mods = "CMD", action = act.SendString('\x02"') }, -- split tmux window vertically
	{ key = "e", mods = "CMD|SHIFT", action = act.SendString("\x02%") }, -- split tmux window horizontally
	{ key = "f", mods = "CMD|SHIFT", action = act.SendString("\x02\x5b\x2f") }, -- start tmux search mode
	{ key = "j", mods = "CMD", action = act.SendString("\x02\x54") }, -- open t - tmux smart session manager
	{ key = "k", mods = "CMD", action = act.SendString("\x02s") }, -- open interactive tmux session client
	{ key = "x", mods = "CMD", action = act.SendString("\x1b\x3a\x71\x0a") }, -- quit vim
	{ key = ";", mods = "CMD", action = act.SendString("\x02?") },
	{ key = "s", mods = "CMD", action = act.SendString("\x1b\x3a\x77\x0a") }, -- save vim buffer
	{ key = "t", mods = "CMD", action = act.SendString("\x02c") }, -- create a new tmux window
	{ key = "w", mods = "CMD", action = act.SendString("\x02x") }, -- kill the current pane
	{ key = "z", mods = "CMD", action = act.SendString("\x02z") }, -- toggle zoom state of the current tmux pane
	{ key = "Tab", mods = "CTRL", action = act.SendString("\x02n") }, -- switch to next tmux window
	{ key = "Tab", mods = "CTRL|SHIFT", action = act.SendString("\x02p") }, -- switch to previous tmux window
	{ key = ",", mods = "CMD", action = act.SendString("\x02,") }, -- rename the current tmux window
	{ key = "l", mods = "CMD|SHIFT", action = act.SendString("\x02l") }, -- right pane
	{ key = "h", mods = "CMD|SHIFT", action = act.SendString("\x02h") }, -- left pane
	{ key = "j", mods = "CMD|SHIFT", action = act.SendString("\x02j") }, -- left pane
	{ key = "k", mods = "CMD|SHIFT", action = act.SendString("\x02k") }, -- left pane
	{ key = "[", mods = "CMD|SHIFT", action = act.SendString("\x02p") }, -- switch to next tmux window
	{ key = "]", mods = "CMD|SHIFT", action = act.SendString("\x02n") }, -- switch to previous tmux window
	{ key = ";", mods = "CMD", action = act.SendString("\x02=") }, -- enter the tmux command prompt
	{ key = "p", mods = "CMD|SHIFT", action = act.SendString("\x02F") }, -- tmux fzf
	{ key = "1", mods = "CMD", action = act.SendString("\x021") }, -- select tmux window 1
	{ key = "2", mods = "CMD", action = act.SendString("\x022") }, --                ... 2
	{ key = "3", mods = "CMD", action = act.SendString("\x023") }, --                ... 3
	{ key = "4", mods = "CMD", action = act.SendString("\x024") }, --                ... 4
	{ key = "5", mods = "CMD", action = act.SendString("\x025") }, --                ... 5
	{ key = "6", mods = "CMD", action = act.SendString("\x026") }, --                ... 6
	{ key = "7", mods = "CMD", action = act.SendString("\x027") }, --                ... 7
	{ key = "8", mods = "CMD", action = act.SendString("\x028") }, --                ... 8
	{ key = "9", mods = "CMD", action = act.SendString("\x029") }, --                ... 9
}

-- local weztermKeys = {
-- 	{ key = "e", mods = "CMD", action = act.SplitHorizontal },
-- 	{ key = "e", mods = "CMD|SHIFT", action = act.SplitVertical }, -- split tmux window horizontally
-- 	{ key = "f", mods = "CMD|SHIFT", action = act.SendString("\x02\x5b\x2f") }, -- start tmux search mode
-- 	{ key = "s", mods = "CMD", action = act.SendString("\x1b\x3a\x77\x0a") }, -- save vim buffer
-- 	{ key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") }, -- create a new tmux window
-- 	{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) }, -- kill the current pane
-- 	{ key = "z", mods = "CMD", action = act.TogglePaneZoomState }, -- toggle zoom state of the current tmux pane
-- 	{ key = "l", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Right") },
-- 	{ key = "h", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Left") },
-- 	{ key = "j", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Down") },
-- 	{ key = "k", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Up") },
-- 	{ key = "{", mods = "CMD", action = act.SendString("\x0f") }, -- navigate back in vim (ctrl+o)
-- 	{ key = "[", mods = "CMD", action = act.ActivateTabRelative(1) }, -- switch to next tmux window
-- 	{ key = "}", mods = "CMD", action = act.SendString("\x09") }, -- navigate forward in vim (ctrl+i)
-- 	{ key = "]", mods = "CMD", action = act.ActivateTabRelative(-1) }, -- switch to previous tmux window
-- 	{ key = ";", mods = "CMD", action = act.SendString("\x02=") }, -- enter the tmux command prompt
-- 	{ key = "p", mods = "CMD|SHIFT", action = act.SendString("\x02F") }, -- tmux fzf
-- 	{ key = "1", mods = "CMD", action = act.SendString("\x021") }, -- select tmux window 1
-- 	{ key = "2", mods = "CMD", action = act.SendString("\x022") }, --                ... 2
-- 	{ key = "3", mods = "CMD", action = act.SendString("\x023") }, --                ... 3
-- 	{ key = "4", mods = "CMD", action = act.SendString("\x024") }, --                ... 4
-- 	{ key = "5", mods = "CMD", action = act.SendString("\x025") }, --                ... 5
-- 	{ key = "6", mods = "CMD", action = act.SendString("\x026") }, --                ... 6
-- 	{ key = "7", mods = "CMD", action = act.SendString("\x027") }, --                ... 7
-- 	{ key = "8", mods = "CMD", action = act.SendString("\x028") }, --                ... 8
-- 	{ key = "9", mods = "CMD", action = act.SendString("\x029") }, --                ... 9
-- }

return function(config)
	config.keys = tmuxKeys
end
