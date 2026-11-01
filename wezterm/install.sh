#!/usr/bin/env bash
# Installs the SumiDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/sumiday.lua" ] && cp "$dest/sumiday.lua" "$dest/sumiday.lua.bak"
cp "$dir/sumiday.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("sumiday")'
