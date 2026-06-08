#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# cosmetics
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# QOL aliases
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -pv'      # always make parents, always verbose
alias df='df -h'
alias free='free -h'

# Shell Options
shopt -s checkwinsize # fix window size after resize
shopt -s cdspell # cd tries to fix directory typos

# dotfiles git alias
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# smarter tab completion (case-insensitive, partial match)
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

# custom commands

extract() {
    case "$1" in
        *.tar.gz)  tar xzf "$1"  ;;
        *.tar.bz2) tar xjf "$1"  ;;
        *.zip)     unzip "$1"    ;;
        *.7z)      7z x "$1"     ;;
        *.gz)      gunzip "$1"   ;;
        *)         echo "unknown format: $1" ;;
    esac
}

note() { echo "$(date): $*" >> ~/notes.txt; }


