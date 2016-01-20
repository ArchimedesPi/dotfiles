# turn on substitution in the prompt
setopt prompt_subst

# functions used in the prompt

function p_arrow() {
    echo "%F{cyan}»%f"
}

function p_colored_path() {
    local slash="%F{cyan}/%f"
    echo "${${PWD/#$HOME/~}//\//$slash}"
}

function p_enviroments() {
    local envs
    [[ -n $SSH_CLIENT ]] && envs+="SSH"

    [[ -n $envs ]] && echo $envs
}

function p_vcs() {
    # vcs_info
    # echo $vcs_info_msg_0_
}

prompt='%F{blue}λ%f $(p_colored_path) $(p_enviroments) $(p_vcs)
$(p_arrow) '