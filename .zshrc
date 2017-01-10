# Edwork ZSHRC Config :: 2016-2017
# standard .zshrc with a collection of useful additions

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Run the nice Screenfetch or Archey command when loaded
if [ -f /usr/bin/screenfetch ]; then screenfetch; fi
if [ -f /usr/bin/archey ] && [ ! -f /usr/bin/screenfetch ]; then archey; fi

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Navigation Aliases
## LS Mods
alias ls='ls -1Fh --color=auto'
alias ll='ls -l -1Fh --color=auto'
alias la='ls -a --color=auto'
alias lt='ls -ltFh'
alias lal='ls -al --color=auto'
## CLEAR Mods
alias c='clear'
## CD Mods
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
# GREP Mods
alias grep='grep --color=auto'
# MKDIR Mods
alias mkdir='mkdir -pv'
# VIM Mods
alias vi=vim
alias svi='sudo vi'
# NETSTAT Mods
alias ports='netstat -tulanp'
# RM Safety Nets
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# APT-GET Mods
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'
# WGET Mods
alias wget='wget -c'
# Shutdown Mods
alias reboot='if [ "$(id -u)" != "0" ]; then sudo shutdown -r now; else shutdown -r now;'
alias poweroff='if [ "$(id -u)" != "0" ]; then sudo shutdown -r now; else shutdown -h now;'
# ZSHRC Shortcuts
alias zshrc='vim ~/.zshrc'
alias customrc='vim ~/.zsh-local'
alias home='cd ~/'
# File Manipulation Shortcuts (from current folder)
alias delempty='find . -empty -type d -delete'
# Program Shortcuts
alias sf='screenfetch'
# Path to the updater script
