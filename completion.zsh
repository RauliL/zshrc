autoload -Uz compinit && compinit

_my_tab_completion()
{
    if [[ "${BUFFER}" == "" ]]
    then
        echo ""
        eval "ls"
        zle accept-line
    else
        zle expand-or-complete
    fi
}

zle -N _my_tab_completion _my_tab_completion
