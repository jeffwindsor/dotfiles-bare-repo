function aws-assume-account-duration-role

    set user '597974043991:mfa/jwindsor@cj.com'
    set duration $1
    set region 'us-west-1'
    set role $2
    set account $3
    set token $4

    #end session
    eval (env | sed -En 's/^(AWS_[^=]*)=.*$/unset \1/p')

    #add new session
    # if [[ -z $token ]]; then
    #     read -r token"MFA Token? "
    # fi

    eval "(aws sts assume-role \
        --role-arn "arn:aws:iam::$account:role/$role" \
        --role-session-name "jmw$fish_pid" \
        --serial-number "arn:aws:iam::$user" \
        --token-code "$token" \
        --duration-seconds $duration \
        --region $region \
        --query \
        'Credentials |
            join (`\n`,
            values({
                AccessKeyId: join(``, [`export AWS_ACCESS_KEY_ID=`,AccessKeyId]),
                SecretAccessKey:join(``, [`export AWS_SECRET_ACCESS_KEY=`,SecretAccessKey]),
                SessionToken:join(``, [`export AWS_SESSION_TOKEN=`,SessionToken])
            }))' \
        --output text)"

end