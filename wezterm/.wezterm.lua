local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- window size
config.initial_cols = 120
config.initial_rows = 30

-- font + font size
config.font_size = 15.0
config.font = wezterm.font("IosevkaTerm Nerd Font Mono")

-- Color scheme
config.color_scheme = "Red Planet"

return config
