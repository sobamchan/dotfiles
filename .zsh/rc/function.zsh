# fd - cd to selected directory
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune \
        -o -type d -print 2> /dev/null | fzf +m) &&
        cd "$dir"
    }

py() {
    test -z "$1" && ipython --no-confirm-exit --ext=autoreload --quick \
        --InteractiveShellApp.exec_lines="['%autoreload 2']" \
        --no-banner|| command python "$@"
}

wiki() {
    nvim /Users/sobamchan/PROJECT/WEB/sobamchan.github.io/_wiki/$(date "+%Y-%m-%d")-"$1".md
}
