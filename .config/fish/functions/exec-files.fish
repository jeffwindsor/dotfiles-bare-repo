function exec-files
    local result=`fd . "$2" -t f -d 2 -H --ignore-file $XDG_CONFIG_HOME/.fdignore | cut -d '/' -f5- | fzf --reverse --height 40%`
    [ ! -z "$result" ] && $1 "$2/$result"
end