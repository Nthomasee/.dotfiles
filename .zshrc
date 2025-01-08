#==============Baza==============
autoload -Uz compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select
export EDITOR=nvim
#================================

#============History=============
HISTORY_IGNORE="mpv*"
HISTORY_IGNORE="clear"
export HISTFILE=~/.histfile_zsh
export SAVEHIST=1000000
export HISTSIZE=$SAVEHIST
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
#================================

#=============aliases============
alias ls='ls --color=auto'
alias lsa="ls --color=auto -A"
alias lsal="ls --color=auto -Al"
alias v="nvim"
alias tmn="timedatectl status | grep Local"
alias ffc="fastfetch -c ~/.config/fastfetch/qwe.jsonc"
alias notift="swaync-client -t"
alias ipower="upower -i $(upower -e | grep BAT)"
alias mpv720="mpv --ytdl-format='bestvideo[height=720]+bestaudio/best'"
alias rtd="cal && rtime"
#================================

#============Plugins=============
eval "$(starship init zsh)"
source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #at the end
#================================
