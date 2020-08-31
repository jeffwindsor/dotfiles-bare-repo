function brews
    set result (brew search --formulae | fzf -m --preview="brew info {}" --preview-window=:hidden --bind=space:toggle-preview)
    [ ! -z "$result" ] && brew install "$result"
end