source $HOME/.config/zsh/environment.zsh

typeset -ga sources
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/prompt.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/keybindings.zsh"
sources+="$ZSH_CONFIG/completion.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
sources+="/etc/zsh_command_not_found"

systemFile=`uname -s | tr "[:upper:]" "[:lower:]"`
sources+="$ZSH_CONFIG/$systemFile.zsh"

foreach file (`echo $sources`)
    if [[ -a $file ]]
    then
        source $file
    fi
end
