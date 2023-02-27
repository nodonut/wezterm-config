local wezterm = require 'wezterm';

return {
    font = wezterm.font("MonoLisa", { weight = "Medium" }),
    font_size = 16.0,
    enable_tab_bar = false,
    scrollback_lines = 10000,
    enable_scroll_bar = false,
    window_background_opacity = 0.9,
    color_scheme = "Catppuccin Mocha",
}
