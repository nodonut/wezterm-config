local wezterm = require 'wezterm';

return {
    font = wezterm.font("MonoLisa", { weight = "Medium" }),
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    font_size = 16.0,
    enable_tab_bar = false,
    scrollback_lines = 10000,
    enable_scroll_bar = false,
    -- window_background_opacity = 0.9,
    color_scheme = "Catppuccin Mocha",
    background = {
        {
            source = {
                File = "/Users/apoorv-work/termwalls/yone.jpeg",
            },
            width = "100%",
            height = "100%",
            repeat_x = "NoRepeat",
            repeat_y = "NoRepeat",
            horizontal_align = "Center",
            hsb = {
                brightness = 0.1,
                hue = 1.0,
                saturation = 1.0,
            },
        },
    },
}
