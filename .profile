# Shell config script
# POSIX Shell configuration file

# PATHS
################################################################################

# Reset PATH to keep it from being clobbered by path_helper
# when creating new windows in tmux
if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    source /etc/profile
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Add /opt/local/bin to path if it exists
if [ -d "/opt/local/bin" ] ; then
	PATH="/opt/local/bin:$PATH"
fi

# Add aliases
if [ -e "${HOME}/.aliases" ]; then
    . ${HOME}/.aliases
    # echo "alias Sourced!"
fi

# Add secret keys if it exists
if [ -e "${HOME}/.bash_secrets" ]; then
    . ${HOME}/.bash_secrets
    # echo "secrets Sourced!"
fi

# Add computer-specific settings
if [ -e "${HOME}/.work" ]; then
    . ${HOME}/.work
elif [ -e "${HOME}/.home" ]; then
    . ${HOME}/.home
fi