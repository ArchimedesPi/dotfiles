if [[ "$OSTYPE" == linux* ]]; then
    export BROWSER=firefox

    if [[ "$TERM" == xterm ]]; then
        export TERM=xterm-256color
    fi
fi