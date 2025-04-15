if status is-interactive

#===================Aliases===================
abbr -a -- ls 'eza'
abbr -a -- lsa 'eza -a'
abbr -a -- lsal 'eza -al'
abbr -a -- v 'nvim'
abbr -a -- osu '~/Downloads/osu.AppImage'
abbr -a -- ffc 'fastfetch -c ~/.config/fastfetch/qwe.jsonc'
abbr -a -- dots 'cd ~/.dotfiles'
abbr -a -- weather 'curl wttr.in'
abbr -a -- update 'sudo pacman -Syu'
#=============================================


#====================Path=====================
fish_add_path '/usr/local/texlive/2024/bin/x86_64-linux'
#=============================================


#==================Variables==================
set -g fish_key_bindings fish_vi_key_bindings
set -gx EDITOR nvim
set -gx SDL_VIDEODRIVER wayland
set fish_greeting ""
set -gx MANPAGER 'nvim +Man!'
#=============================================


#===================Plugins===================
starship init fish | source
zoxide init fish | source
#=============================================

end

# Created by `pipx` on 2025-02-23 23:52:59
set PATH $PATH /home/nathan/.local/bin

function fish_postexec --on-event fish_postexec
    set exit_code $status
    if test $exit_code -ne 0
        echo (set_color red)"✖"(set_color yellow)" Exited abnormally with code "(set_color red)$exit_code(set_color normal)" at "(set_color blue)(date "+%a %b %d %H:%M:%S")(set_color normal)
    end
end

