dot_zsh="$HOME/.zsh"

autoload -U compinit promptinit colors select-word-style
select-word-style bash
compinit -i
promptinit
colors

# set up history
setopt hist_ignore_space
setopt append_history
setopt hist_ignore_dups
setopt share_history # share history between terminals

setopt extendedglob # moar globbing

export EDITOR="subl -w"
export VISUAL="subl -w"

user_mods=(
    'path'
    'random_env'
    'utils'
    'vcsinfo'
    'prompt'
    'completions'
    'linux'
    )

thirdparty_mods=(
    'zsh-syntax-highlighting/zsh-syntax-highlighting.zsh')

for module in $user_mods; do
    source $dot_zsh/$module.zsh
done

for module in $thirdparty_mods; do
    source $dot_zsh/thirdparty_modules/$module
done
