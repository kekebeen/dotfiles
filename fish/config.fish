# PATH
source ~/.dotfiles/fish/functions/path.fish

# Hydro prompt
# https://github.com/jorgebucaran/hydro#configuration
# hydro_symbol_prompt | string | prompt symbol | ❱
# hydro_symbol_git_dirty | string | dirty repository symbol | •
# hydro_symbol_git_ahead | string | ahead of upstream symbol | ↑
# hydro_symbol_git_behing | string | behing upstream symbol | ↓
# hydro_color_pwd, hydro_color_git, hydro_color_error, hydro_color_prompt, hydro_color_duration, hydro_fetch
set --global hydro_symbol_prompt 🌱

# Remove fish default greeting
set --erase fish_greeting

# bat preview
set -x -g BAT_STYLE numbers,changes,header
set -x -g BAT_THEME gruvbox-light
# fzf
set -x -g FZF_DEFAULT_OPTS --ansi --height 80% --layout=reverse --color light
set -x -g FZF_DEFAULT_COMMAND fd --type f --follow --hidden


# Aliases
source ~/.dotfiles/fish/aliases.fish
