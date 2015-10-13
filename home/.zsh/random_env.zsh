# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set up n for $HOME as the prefix
export N_PREFIX=$HOME

# Set up the Android SDK
export ANDROID_HOME=$HOME/Android/Sdk

# use homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"