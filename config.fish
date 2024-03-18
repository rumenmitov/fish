function fish_prompt
	echo -n \n  
	# echo -n (set_color blue)"$USER"(set_color white)"@$hostname"(set_color yellow) " " (set_color cyan)"$PWD"\n
	echo -n (set_color blue)"$USER"(set_color white)"🏯$hostname"(set_color yellow) "🌊" (set_color cyan)"$PWD"\n
	# echo -n (set_color red)"➤ " (set_color normal)
	echo -n (set_color red)"🦅 " (set_color normal)
end

# Default Editor
    set -gx EDITOR /usr/bin/nvim

# Default ls Colors
    set -Ux LS_COLORS "*.py=33:di=34:*.h=35:*.pdf=4;37"

    set -Ux HOWDOI_SEARCH_ENGINE duckduckgo
    set -Ux HOWDOI_COLORIZE duckduckgo

# Git Prompt

	# Colors
	set -g green (set_color green)
	set -g magenta (set_color magenta)
	set -g normal (set_color normal)
	set -g red (set_color red)
	set -g yellow (set_color yellow)

	set -g __fish_git_prompt_color_dirtystate white
	set -g __fish_git_prompt_color_invalidstate red
	set -g __fish_git_prompt_color_merging yellow
	set -g __fish_git_prompt_color_stagedstate yellow
	set -g __fish_git_prompt_color_upstream_ahead green
	set -g __fish_git_prompt_color_upstream_behind red

  # Icons
  set -g __fish_git_prompt_char_cleanstate 🥳
  set -g __fish_git_prompt_char_dirtystate 🎱
  set -g __fish_git_prompt_char_untrackedfiles 🍿
  set -g __fish_git_prompt_char_stagedstate 🌟
  set -g __fish_git_prompt_char_upstream_ahead ⬆️   
  set -g __fish_git_prompt_char_upstream_behind ⬇️  

function fish_right_prompt
	set -g __fish_git_prompt_show_informative_status true
	set -g __fish_git_prompt_use_informative_chars true
	set -g __fish_git_prompt_showcolorhints true
	set -g __fish_git_prompt_char_stateseparator "    "
	set -g __fish_git_prompt_showdirtystate true
	set -g __fish_git_prompt_showuntrackedfiles true
	set -g __fish_git_prompt_showupstream auto 

	printf "     %s" (fish_git_prompt '%s')
end

# Custom aliases
alias nv="nvim -p"
alias tmux="TERM=xterm-256color /usr/bin/tmux"
alias fast="/usr/local/bin/fast | bash"
alias stop="kill -9 $(lsof -i tcp:443 | grep LISTEN | awk '{print $2}')"
alias tty-clock=" tty-clock -c -B -C 6"

thefuck --alias | source

# Programming languages
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/rumen/.ghcup/bin # ghcup-env
alias flutter="/usr/lib/flutter/bin/flutter"

# Created by `pipx` on 2024-01-28 23:09:35
set PATH $PATH /home/rumen/.local/bin
