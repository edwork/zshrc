# [moved project to git.edwork.org - this version is depricated]
# zshrc
.zshrc configurations for power users!

## Features:
-Runs Screenfetch (if installed) when ZSH is loaded
-Lots of aliases (listed below)
-Safeguards by aliasing common commands (rm -rf / protection)

## Update with a single command!
-Pull changes from github with the 'updaterc' alias!

## Aliases:

### LS Mods
alias ls='ls -1Fh --color=auto'

alias ll='ls -l -1Fh --color=auto'

alias la='ls -a --color=auto'

alias lt='ls -ltFh'

alias lal='ls -al --color=auto'

### CLEAR Mods

alias c='clear'

### CD Mods

alias cd..='cd ..'

alias ..='cd ..'

alias ...='cd ../../../'

alias ....='cd ../../../../'

alias .....='cd ../../../../'

## GREP Mods

alias grep='grep --color=auto'

## MKDIR Mods

alias mkdir='mkdir -pv'

## VIM Mods

alias vi=vim

alias svi='sudo vi'

## NETSTAT Mods

alias ports='netstat -tulanp'

## RM Safety Nets

alias rm='rm -I --preserve-root'

alias mv='mv -i'

alias cp='cp -i'

alias ln='ln -i'

alias chown='chown --preserve-root'

alias chmod='chmod --preserve-root'

alias chgrp='chgrp --preserve-root'

## APT-GET Mods

alias update='sudo apt-get update'

alias upgrade='sudo apt-get update && sudo apt-get upgrade -y'

## WGET Mods

alias wget='wget -c'

## ZSHRC Shortcuts

alias zshrc='vim ~/.zshrc'

alias home='cd ~/'

## File Manipulation Shortcuts (from current folder)

alias delempty='find . -empty -type d -delete'
