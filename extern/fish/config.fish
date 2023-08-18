if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

alias ls "ls -F"
alias ll "exa --long --header --git -F --icons"

set fish_color_normal brcyan
set fish_color_command brcyan
set -gx LS_COLORS "di=32" 
