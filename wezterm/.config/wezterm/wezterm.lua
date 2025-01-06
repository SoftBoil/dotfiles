-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, change the color scheme:
config.color_scheme = 'Dracula (Official)'

-- Font settings
config.font = wezterm.font 'Rec Mono Semicasual'
config.font_size = 18.0

-- Enable the tab bar
config.enable_tab_bar = true

config.initial_rows = 25
config.initial_cols = 80

-- config.keys = {
--   -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
--   {
--     key = 'LeftArrow',
--     mods = 'OPT',
--     action = act.SendKey {
--       key = 'b',
--       mods = 'ALT',
--     },
--   },
--   {
--     key = 'RightArrow',
--     mods = 'OPT',
--     action = act.SendKey { key = 'f', mods = 'ALT' },
--   },
-- }

config.keys = {
    -- Make Option-Left equivalent to Alt-b which many shells interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
}

-- and finally, return the configuration to wezterm
return config

