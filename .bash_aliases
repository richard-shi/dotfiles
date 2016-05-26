# Bash aliases for Richard Shi
# For these machines:
#   - Work machine (Ubuntu Linux 14.04 LTS)
#   - Home machine (OS X Yosemite)

# Activate common aliases (CHECK IF BSD COMMANDS ARE THE SAME AS GNU)
common_aliases(){
    alias v='vim'
    alias bim='vim'
    alias grep='grep --color=auto'
    alias ..='cd ..'
    alias ...='cd ../..'

    # May be installed on both, but must check
    alias t='tmux'
    alias r='ranger'
}

# Aliases for Work
linux_aliases(){
    alias ll='ls -l -sort'
}

# Aliases for Home
osx_aliases(){
    alias pip='pip3'
    alias python='python3'
    alias ls='ls -G'
    alias gprof='instruments'
    alias grep='grep --color=auto'
    alias gdb='lldb'
    alias emacs='emacs-24.5 -nw'
    alias editnotes='vim ~/bin/notes'
    alias mplay='mplayer -novideo'
    alias maclogout="osascript -e 'tell application \"System Events\" to log out'"
}

# Detect OS and call corresponding alias functions
main(){
    common_aliases
    case "$OSTYPE" in
        darwin*) osx_aliases ;;
        linux*) linux_aliases ;;
        *) echo "Error: unknown OS $OSTYPE";;
    esac
}

main



