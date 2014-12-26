bindkey " " magic-space
bindkey "^a" beginning-of-line
bindkey "^b" backward-char
bindkey "^d" delete-char-or-list
bindkey "^e" end-of-line
bindkey "^f" forward-line
bindkey "^g" send-break
bindkey "^h" backward-delete-char
bindkey "^i" _my_tab_completion
bindkey "^j" accept-line
bindkey "^k" kill-line
bindkey "^l" clear-screen
bindkey "^m" accept-line
bindkey "^n" down-line-or-history
bindkey "^o" accept-line-and-down-history
bindkey "^p" up-line-or-history
bindkey "^q" push-line
bindkey "^r" history-incremental-search-backward
bindkey "^s" history-incremental-search-forward
bindkey "^t" transpose-chars
bindkey "^u" kill-whole-line
bindkey "^v" quoted-insert
bindkey "^w" backward-kill-word

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
    screen*)
        bindkey '\e[1~' beginning-of-line
        bindkey '\e[4~' end-of-line
        bindkey '\e[3~' delete-char
        bindkey '\e[2~' overwrite-mode
        bindkey '\e[7~' beginning-of-line
        bindkey '\e[8~' end-of-line
        bindkey '\e0c' forward-word
        bindkey '\e0d' backward-word
        bindkey '\e[3~' backward-delete-char
    ;;
esac
