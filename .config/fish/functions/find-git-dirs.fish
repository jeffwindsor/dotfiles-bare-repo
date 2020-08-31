function find-git-dirs
    find $1 -type d \( -exec test -d "{}/.git" -a "{}" != "." \; -print -prune -o -name .git -prune \)
end