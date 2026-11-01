#!/usr/bin/env bash
# Installs the SumiDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/sumiday.gitconfig" ] && cp "$dest/sumiday.gitconfig" "$dest/sumiday.gitconfig.bak"
cp "$dir/sumiday.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/sumiday.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/sumiday.gitconfig"
fi
echo "Needs the bat SumiDay theme for the code colours: ./bat/install.sh"
