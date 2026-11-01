#!/usr/bin/env bash
# Installs the SumiDay Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/sumiday.toml" ] && cp "$dest/sumiday.toml" "$dest/sumiday.toml.bak"
cp "$dir/sumiday.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/sumiday.toml"]'
