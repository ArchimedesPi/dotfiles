# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set up n for $HOME as the prefix
export N_PREFIX=$HOME

# Set up the Android SDK
export ANDROID_HOME=$HOME/Android/Sdk

# use homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# arduino-makefile stuff
export ARDUINO_DIR=/usr/share/arduino
export ARDMK_DIR=/home/liam/github/sudar/Arduino-Makefile
export AVR_TOOLS_DIR=$ARDUINO_DIR/hardware/tools/avr

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

export DEBFULLNAME="Liam Marshall"
export DEBEMAIL="shakespeares.integral@gmail.com"
