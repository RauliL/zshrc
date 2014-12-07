bindkey " " magic-space
bindkey "^i" _my_tab_completion
bindkey "^r" history-incremental-search-backward

case "$TERM" in
    linux)
        bindkey '\e[1~' beginning-of-line
        bindkey '\e[4~' end-of-line
        bindkey '\e[3~' delete-char
        bindkey '\e[2~' overwrite-mode
    ;;
    xterm*)
        bindkey '\e[H' beginning-of-line
        bindkey '\e[F' end-of-line
        bindkey '\e[3~' delete-char
        bindkey '\e[2~' overwrite-mode
        bindkey '^[[5C' forward-word
        bindkey '^[[5D' backward-word
        bindkey '^[[1;5A' up-line-or-history
        bindkey '^[[1;5B' down-line-or-history
        bindkey '^[[1;5C' forward-word
        bindkey '^[[1;5D' backward-word
    ;;
esac
