function itp-up
    set token $2
    set filename $1

    aws-assume-account-duration-role 3599 "cjorganization/CJProvisionerAccessRole" 90039404058 $token

    echo "Uploading: $HOME/Downloads/$filename"
    echo "Duplicate File Matches"
    aws s3 ls "s3://itp-adjustment-persistence-sourcestore-1olersd67dfhf/" | grep ".json" | sort | awk '{print $4}' | grep $filename
    echo "Press any key to upload"
    read $x

    aws s3 cp "$HOME/Downloads/$filename" s3://itp-adjustment-persistence-sourcestore-1olersd67dfhf/

    echo "End Session"
    eval (env | sed -En 's/^(AWS_[^=]*)=.*$/unset \1/p')
end