export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"

HISTFILE=$ZSH_CACHE/history
HISTSIZE=10000
SAVEHIST=10000

[[ ! -d $ZSH_CACHE ]] && mkdir -p $ZSH_CACHE
[[ -d $HOME/bin ]] && export PATH="$PATH:$HOME/bin"

# Some applications I use.
export BROWSER=firefox
if which nvim > /dev/null 2>&1
then
  export EDITOR=nvim
else
  export EDITOR=vim
fi
export PAGER=less
export VISUAL=$EDITOR
