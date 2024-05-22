local wezterm = require 'wezterm'

wezterm.on('gui-startup', function(cmd)
	wezterm.mux.spawn_window(cmd or
		{position={x=1800,y=40}}
	)
end)

local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.default_prog = {
	'pwsh',
    '-nologo',
}

config.default_cursor_style = 'SteadyBlock'
config.initial_rows = 40
config.initial_cols = 90
config.audible_bell = "Disabled"

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.font = wezterm.font {
	family = 'Noto Sans Mono',
	harfbuzz_features = { 'liga=0', 'clig=0' },
}

config.colors = {
    cursor_bg = 'white',
}

return config
