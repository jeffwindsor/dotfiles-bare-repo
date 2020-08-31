function exec-git-dirs
    local result=`find-git-dirs $2 | cut -d '/' -f5- | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden --reverse --height 40% | awk -v path="$2/" '{print path $0}'`
    [ ! -z "$result" ] && $1 $result
end