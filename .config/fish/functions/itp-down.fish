function itp-down
    aws-assume-account-duration-role 43199 "cjorganization/CJDeveloperAccessRole" 845290112482 $argv

    echo "ITP Source Browser Adjustments"
    aws s3 ls "s3://datalake-s3-buckets-datalake-659qwgl37b60/browserAdjustments/" | grep ".json" | sort

    echo "Enter Filename"
    read filename
    aws s3 cp "s3://datalake-s3-buckets-datalake-659qwgl37b60/browserAdjustments/$filename" $HOME/Downloads/

    echo "Ending Session"
    eval (env | sed -En 's/^(AWS_[^=]*)=.*$/unset \1/p')
end
