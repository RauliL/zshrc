export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export ZSH_CONFIG="${XDG_CONFIG_HOME}/zsh"
export ZSH_CACHE="${XDG_CACHE_HOME}/zsh"

if test ! -d "${ZSH_CACHE}"
then
    mkdir -p "${ZSH_CACHE}"
fi

if test -d "${HOME}/bin"
then
    export PATH="${PATH}:${HOME}/bin"
fi

# I use 256 color capable terminals everywhere.
export TERM=xterm-256color

# Applications I use
export BROWSER=firefox
export EDITOR=vim
export PAGER=less
export VISUAL=vim
