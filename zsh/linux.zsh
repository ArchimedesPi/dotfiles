if [[ "$OSTYPE" == linux* ]]; then
    if [[ "$TERM" == xterm ]]; then
        export TERM=xterm-256color
    fi
fi
