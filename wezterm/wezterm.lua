-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 15
config.color_scheme = 'AdventureTime'
-- font
config.font = wezterm.font('JetBrains Mono')
-- themes
config.color_scheme = 'Gruvbox Dark (Gogh)'
-- background
config.background = {
    {
        source = {File = "/home/shuu/Downloads/illustration-anime-character-rain.jpg"},
        opacity = 1,
        hsb = {
            brightness = 0.1
        },
        horizontal_align = "Center"
    }, 
}
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = false
config.show_tabs_in_tab_bar = false
config.window_decorations = "RESIZE"

-- Finally, return the configuration to wezterm:
return config