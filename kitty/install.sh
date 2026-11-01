#!/usr/bin/env bash
# Installs the SumiDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/SumiDay.conf" ] && cp "$dest/SumiDay.conf" "$dest/SumiDay.conf.bak"
cp "$dir/SumiDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/SumiDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
