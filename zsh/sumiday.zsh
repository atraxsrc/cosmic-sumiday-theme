# Sumi Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-sumiday-theme/zsh/sumiday.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #EDE8DE   fg:      #1C1B19
#  moss:    #566658   coral:   #A23A2A
#  vermilion: #AC3320   lichen:  #5D635A
#  gold:    #745E30   fern:    #54645A
#  muted:   #64615E   dim:     #979590
#
# Light terminal: moss for commands, lichen for strings, gold for links,
# vermilion only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;84;100;90:ln=3;38;2;116;94;48:ex=1;38;2;86;102;88:*.zip=4;38;2;162;58;42:*.tar=4;38;2;162;58;42:*.gz=4;38;2;162;58;42:*.xz=4;38;2;162;58;42:*.7z=4;38;2;162;58;42:*.deb=4;38;2;162;58;42:*.png=38;2;100;97;94:*.jpg=38;2;100;97;94:*.jpeg=38;2;100;97;94:*.webp=38;2;100;97;94:*.gif=38;2;100;97;94:*.mp4=3;38;2;100;97;94:*.mkv=3;38;2;100;97;94:*.rs=38;2;93;99;90:*.py=38;2;93;99;90:*.js=38;2;93;99;90:*.ts=38;2;93;99;90:*.sh=38;2;93;99;90:*.md=38;2;101;96;88:*.txt=38;2;101;96;88:or=9;38;2;172;51;32"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#7F817E'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#566658'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#566658'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#566658'
ZSH_HIGHLIGHT_STYLES[function]='fg=#566658'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#566658'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#566658,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#5D635A,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#54645A,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#AC3320,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#656058,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#A23A2A'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#A23A2A'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#64615E'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#64615E'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#5D635A'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#5D635A'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#5D635A'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#64615E'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#64615E'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#979590'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

# lazygit reads one config file; stack the rice colours (lazygit/sumiday.yml,
# installed by ./lazygit/install.sh) on top of your own config.yml
if (( $+commands[lazygit] )); then
    _sumiday_lg="${XDG_CONFIG_HOME:-$HOME/.config}/lazygit"
    if [[ -f $_sumiday_lg/sumiday.yml ]]; then
        export LG_CONFIG_FILE="$_sumiday_lg/sumiday.yml"
        [[ -f $_sumiday_lg/config.yml ]] && LG_CONFIG_FILE="$_sumiday_lg/config.yml,$LG_CONFIG_FILE"
    fi
    unset _sumiday_lg
fi

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
