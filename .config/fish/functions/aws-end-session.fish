function aws-end-session 
    eval (env | sed -En 's/^(AWS_[^=]*)=.*$/unset \1/p')
end 
