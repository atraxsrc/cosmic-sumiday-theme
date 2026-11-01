#!/usr/bin/env bash
# Installs the SumiDay Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/sumiday.toml" ] && cp "$dest/sumiday.toml" "$dest/sumiday.toml.bak"
cp "$dir/sumiday.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "sumiday"'
