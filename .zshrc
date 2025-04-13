#==============Baza==============
autoload -Uz compinit promptinit
compinit -d ~/.config/zsh/zcompdump/.zcompdump
promptinit
zstyle ':completion:*' menu select
#================================

#============History=============
HISTORY_IGNORE="mpv*"
HISTORY_IGNORE="clear"
export HISTFILE=~/.histfile_zsh
export SAVEHIST=1000000
export HISTSIZE=$SAVEHIST
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY          
setopt HIST_EXPIRE_DUPS_FIRST    
setopt HIST_FIND_NO_DUPS         
setopt HIST_IGNORE_ALL_DUPS      
setopt HIST_IGNORE_DUPS          
setopt HIST_IGNORE_SPACE         
setopt HIST_SAVE_NO_DUPS         
setopt SHARE_HISTORY             
#================================

#============Exports=============
export EDITOR=nvim
export SDL_VIDEODRIVER=wayland
export PATH="$PATH:/home/nathan/.local/bin"
export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"
export DIFFPROG="nvim -d"
export MANPAGER="nvim +Man!"
#================================

#=============aliases============
alias ls='eza'
alias lsa="eza -a"
alias lsal="eza -al"
alias v="nvim"
alias ffc="fastfetch -c ~/.config/fastfetch/qwe.jsonc"
alias ipower="upower -i $(upower -e | grep BAT)"
alias weather="curl wttr.in"
#================================

#============Plugins=============
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #at the end
#================================

