function play_song {
    # Skip DASH manifest for speed purposes. This might actually disable
    # being able to specify things like 'bestaudio' as the requested format,
    # but try anyway.
    # Get the best audio that isn't WebM, because afplay doesn't support it.
    # Use "$*" so that quoting the requested song isn't necessary.
    youtube-dl --default-search=ytsearch: \
               --youtube-skip-dash-manifest \
               --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
               --restrict-filenames \
               --exec=mplayer "$*"
}

function open_on_github {
  firefox `git config --get remote.origin.url`
}

[[ -a ~/github/rupa/z/z.sh ]] && source ~/github/rupa/z/z.sh
