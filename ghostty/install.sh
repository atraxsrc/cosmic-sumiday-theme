#!/usr/bin/env bash
# Installs the SumiDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/SumiDay" ] && cp "$dest/SumiDay" "$dest/SumiDay.bak"
cp "$dir/SumiDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = SumiDay"
echo "(or  theme = dark:Sumi,light:SumiDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
