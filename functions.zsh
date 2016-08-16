wo()
{
    local -a project
    project=$1

    for app_dir in app project
    do
        project_dir="$HOME/Projektit/$project"
        if [[ -d "$project_dir/$app_dir" && -d "$project_dir/venv" ]]
        then
            if [[ -n "$VIRTUAL_ENV" ]]
            then
                deactivate
            fi
            source "$project_dir/venv/bin/activate"
            cd "$project_dir/$app_dir"
            return
        fi
    done
    echo "Unrecognized project: $project"
}

man()
{
    env \
        LESS_TERMCAP_mb=$(printf "\x1b[38;2;255;200;200m") \
        LESS_TERMCAP_md=$(printf "\x1b[38;2;255;100;200m") \
        LESS_TERMCAP_me=$(printf "\x1b[0m") \
        LESS_TERMCAP_so=$(printf "\x1b[38;2;60;90;90;48;2;40;40;40m") \
        LESS_TERMCAP_se=$(printf "\x1b[0m") \
        LESS_TERMCAP_us=$(printf "\x1b[38;2;150;100;200m") \
        LESS_TERMCAP_ue=$(printf "\x1b[0m") \
    man "$@"
}
