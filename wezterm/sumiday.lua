-- SumiDay for WezTerm, part of cosmic-sumiday-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("sumiday")
-- To follow COSMIC's Dark / Light toggle with the Sumi half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "sumi" or "sumiday")

return {
  foreground = "#1C1B19",
  background = "#EDE8DE",

  cursor_bg = "#566658",
  cursor_fg = "#EDE8DE",
  cursor_border = "#566658",
  compose_cursor = "#A23A2A",

  selection_bg = "#D9D2C5",
  selection_fg = "none",

  scrollbar_thumb = "#D9D2C5",
  split = "#D9D2C5",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#E4DED2", "#AC3320", "#5D635A", "#745E30", "#566658", "#A23A2A", "#5A6363", "#5A5449" },
  brights = { "#979590", "#8A291A", "#4B5049", "#5E4C27", "#48554A", "#822E22", "#5A6363", "#0E0E0D" },

  copy_mode_active_highlight_bg = { Color = "#566658" },
  copy_mode_active_highlight_fg = { Color = "#EDE8DE" },
  copy_mode_inactive_highlight_bg = { Color = "#745E30" },
  copy_mode_inactive_highlight_fg = { Color = "#EDE8DE" },

  quick_select_label_bg = { Color = "#A23A2A" },
  quick_select_label_fg = { Color = "#EDE8DE" },
  quick_select_match_bg = { Color = "#745E30" },
  quick_select_match_fg = { Color = "#EDE8DE" },

  tab_bar = {
    background = "#EDE8DE",
    active_tab = { bg_color = "#566658", fg_color = "#EDE8DE", intensity = "Bold" },
    inactive_tab = { bg_color = "#F7F3EB", fg_color = "#54645A" },
    inactive_tab_hover = { bg_color = "#E4DED2", fg_color = "#1C1B19" },
    new_tab = { bg_color = "#EDE8DE", fg_color = "#54645A" },
    new_tab_hover = { bg_color = "#E4DED2", fg_color = "#566658" },
  },
}
