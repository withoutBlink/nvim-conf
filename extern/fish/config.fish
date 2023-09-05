if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

alias ls "ls -F"
alias ll "exa --long --header --git -F --icons"

set fish_color_normal brcyan
set fish_color_command brcyan

set -gx LS_COLORS "di=32" 

function install_fisher
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

function install_z
	fisher install jethrokuan/z
end

