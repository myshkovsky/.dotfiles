local wezterm = require 'wezterm'

wezterm.on('gui-startup', function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or
		{position={x=1800,y=40}}
	)
end)

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.default_prog = {
	'powershell'
}

config.default_cursor_style = 'BlinkingBlock'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 500
config.initial_rows = 40
config.initial_cols = 90

config.window_padding = {
  left = 2,
  right = 0,
  top = 0,
  bottom = 0,
}

config.font = wezterm.font {
	family = 'Noto Sans Mono',
	harfbuzz_features = { 'liga=0', 'clig=0' },
}

config.colors = {
	background = '#1d1f21',
    cursor_bg = 'white',
    cursor_fg = 'black',
    cursor_border = 'white',
}

return config
