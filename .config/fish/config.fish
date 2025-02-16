if status is-interactive

#===================Aliases===================
abbr -a -- ls 'eza'
abbr -a -- lsa 'eza -a'
abbr -a -- lsal 'eza -al'
abbr -a -- v 'nvim'
abbr -a -- osu '~/Downloads/osu.AppImage'
#=============================================


#====================Path=====================
fish_add_path '/usr/local/texlive/2024/bin/x86_64-linux'
#=============================================


#==================Variables==================
set -g fish_key_bindings fish_vi_key_bindings
set -gx EDITOR nvim
set -gx SDL_VIDEODRIVER wayland
set fish_greeting ""
#=============================================


#===================Plugins===================
starship init fish | source
zoxide init fish | source
#=============================================

end
