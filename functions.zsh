wo()
{
    local -a project
    project=$1

    if [[ -d "$HOME/Projektit/$project/project" ]]
    then
        source "$HOME/Projektit/$project/venv/bin/activate"
        cd "$HOME/Projektit/$project/project"
    else
        echo "Unrecognized project: $project"
    fi
}
