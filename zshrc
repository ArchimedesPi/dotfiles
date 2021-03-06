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

export EDITOR="subl3 -w"
export VISUAL="subl3 -w"

user_mods=(
    'path'
    'keybinds'
    'random_env'
    'utils'
    'vcsinfo'
    'prompt'
    'completions'
    'linux'
    'ssh'
    )

thirdparty_mods=(
    'zsh-syntax-highlighting/zsh-syntax-highlighting.zsh')

for module in $user_mods; do
    source $dot_zsh/$module.zsh
done

for module in $thirdparty_mods; do
    source $dot_zsh/thirdparty_modules/$module
done

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
