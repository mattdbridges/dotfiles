# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=()

source $ZSH/oh-my-zsh.sh

###################################
## Now...customize to your pleasure
###################################

# Reload for zsh
alias reload="source ~/.zshrc"

# The name of the shell that is currently in use for shared scripts
# to be smart about what is included.
export SHELL_NAME=zsh

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/bin"
export DOTIFY_HOME=$HOME/.dotify

# Source all scripts
export DOTIFY_BIN=$DOTIFY_HOME/bin
export DOTIFY_SCRIPTS=$DOTIFY_HOME/scripts
export PATH="$DOTIFY_BIN:$PATH"

source "$DOTIFY_SCRIPTS/platform.bash"

chmod -R 755 $DOTIFY_BIN;

for file in $DOTIFY_SCRIPTS/**/*; do
  if [ -f "$file" ] ; then
    . "$file"
  fi
done
