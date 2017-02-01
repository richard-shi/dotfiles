# POSIX Shell configuration file

# GENERAL SETTINGS
################################################################################

# Setting default editor(for use with Ctrl-X e)
export EDITOR="/usr/bin/vim"

# PATHS
################################################################################
# Set basic path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Add /opt/local/bin to PATH
if [ -d "/opt/local/bin" ] ; then
    PATH="/opt/local/bin:$PATH"
fi

# SHELL SETUP
################################################################################

# Add aliases
if [ -e "${HOME}/.bash_aliases" ]; then
    . ${HOME}/.bash_aliases
    # echo "alias Sourced!"
fi

# Add secret keys if it exists
if [ -e "${HOME}/.bash_secrets" ]; then
    . ${HOME}/.bash_secrets
    # echo "secrets Sourced!"
fi


# OTHER
################################################################################

# Enable Build caching for C/C++ builds
export USE_CCACHE=1

# OS X only
################################################################################

# Setting pkg-config configuration path
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/lib"


