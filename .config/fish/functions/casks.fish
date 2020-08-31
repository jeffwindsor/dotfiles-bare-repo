function casks
    set result (brew search --casks | fzf -m --preview="brew cask info {}" --preview-window=:hidden --bind=space:toggle-preview)
    [ ! -z "$result" ] && brew cask install "$result"
end