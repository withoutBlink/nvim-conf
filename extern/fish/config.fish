if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
set -g JAVA_HOME '/opt/homebrew/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home'

alias ls "ls -F"
alias ll "exa --long --header --git -F --icons"
alias strace "dtruss"
alias ldd "otool -L"
alias ipa "ifconfig en0"

set fish_color_normal brcyan
set fish_color_command brcyan

set -gx LS_COLORS "di=32" 
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx ANDROID_SDK "/Users/andrew/Library/Android/sdk"

# set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
# set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
