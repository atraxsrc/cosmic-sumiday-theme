#!/usr/bin/env bash
# Installs the SumiDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/sumiday.yml" ] && cp "$dest/sumiday.yml" "$dest/sumiday.yml.bak"
cp "$dir/sumiday.yml" "$dest/"
echo "Done. zsh/sumiday.zsh points LG_CONFIG_FILE at config.yml plus sumiday.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/sumiday.yml\""
