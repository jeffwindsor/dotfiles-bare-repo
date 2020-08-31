function dot-log-graph
    dot log --graph --pretty=format:$GIT_LOG_PRETTY_FORMAT --abbrev-commit --max-count=$1:-10;
end