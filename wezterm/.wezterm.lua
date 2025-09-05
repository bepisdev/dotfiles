local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Initiali geometry and font size
config.initial_cols = 120
config.initial_rows = 30
config.font_size = 14.0

config.font = wezterm.font("IosevkaTerm Nerd Font Mono")

return config
