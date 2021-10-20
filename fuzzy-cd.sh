#!/bin/sh

__select_dir() {
    SEL="$(ls $1 | fzf --no-multi --height=50% --min-height=15 --expect=H --preview="ls $1 {}")"
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

    __print_status_line
    SELECTION="$(__select_dir $LS_ARG)"
    while [[ -n "$SELECTION" && "$SELECTION" != "." && -d "$SELECTION" ]] && ls $LS_ARG -l "$SELECTION" | grep '^d' > /dev/null 2>&1 ; do
        cd "$SELECTION"
        __print_status_line
        SELECTION="$(__select_dir $LS_ARG)"
    done

    test -d "$SELECTION" && cd "$SELECTION"
}
