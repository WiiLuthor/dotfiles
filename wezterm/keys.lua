local wezterm = require 'wezterm'
local module  = {}
    function module.apply_to_config(config)
        config.keys = {
            {
                key = 'q',
                mods = 'CTRL',
                action = wezterm.action.CloseCurrentTab { confirm = true },
            },

            {
                key = 'w',
                mods = 'CTRL',
                action = wezterm.action.QuitApplication
            },
        }
    end
return module

