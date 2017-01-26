# Bash aliases for Richard Shi
alias v='vim'
alias bim='vim'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ls='ls -lahG'
alias gprof='instruments'
alias grep='grep --color=auto'
alias gdb='lldb'
alias editnotes='vim ~/bin/notes'
alias mplay='mplayer -novideo'
alias maclogout="osascript -e 'tell application \"System Events\" to log out'"
alias t='tmux'
