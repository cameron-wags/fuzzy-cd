#!/bin/sh

__select_dir() {
    SEL="$(ls $1 | fzf --no-multi --height=90% --min-height=9 --expect=H --preview="ls $1 {}")"
    echo $SEL | grep -q '^H$' && echo '..' && return 0
    echo $SEL | tr -d '\n\f\r'
}

__print_status_line() {
    dirname="$(pwd)"
    dirlen="${#dirname}"
    cols=$(( (COLUMNS - dirlen) / 2 ))
    padding="$(printf '%*s' $cols)"
    echo -ne "\r$padding$dirname"
}

fcd() {
    LS_ARG="-a"

    while true; do
        __print_status_line
        SELECTION="$(__select_dir $LS_ARG)"
        [[ -z "$SELECTION" || "$SELECTION" == "." || ! -d "$SELECTION" ]] && break
        cd "$SELECTION"
        [[ -n "$(find . -mindepth 1 -maxdepth 1 -type d)" ]] || break
    done
}

