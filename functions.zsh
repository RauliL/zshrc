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
