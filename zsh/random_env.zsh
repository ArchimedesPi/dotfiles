# Set up n for $HOME as the prefix
export N_PREFIX=$HOME

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

export DEBFULLNAME="Liam Marshall"
export DEBEMAIL="shakespeares.integral@gmail.com"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export JAVA_HOME="/usr/lib/jvm/`archlinux-java get`"

export PG_OF_PATH=/home/liam/builds/of_v0.9.2_linux64_release

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
