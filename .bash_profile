# Sources .bashrc if login session
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 

# Activates Bash Completion plugin
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Add ~/bin to PATH for personal scripts
PATH="${PATH}:~/bin"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.5/bin"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PATH

# Setting Github API token for Homebrew
export HOMEBREW_GITHUB_API_TOKEN="f025815f319ac91651e794f5e6a045be56e442d4"

# Setting default editor(for use with Ctrl-X e)
export EDITOR="/usr/bin/vim"

# Setting pkg-config configuation path
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/lib"
