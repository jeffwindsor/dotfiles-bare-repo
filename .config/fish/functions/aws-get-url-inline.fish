function aws-get-url-inline
	python3 <<EOF
import http.client
import json
import urllib.parse
result = json.dumps({
  "sessionId": "$AWS_ACCESS_KEY_ID",
  "sessionKey": "$AWS_SECRET_ACCESS_KEY",
  "sessionToken": "$AWS_SESSION_TOKEN"
})
path = '/federation?Action=getSigninToken&Session=' + urllib.parse.quote_plus(result, safe="")
conn = http.client.HTTPSConnection("signin.aws.amazon.com")
conn.request("GET", path)
rq = conn.getresponse()
if rq.status != 200:
  raise Exception('request failed because %s', rq.reason)
data = json.load(rq)
signin_token = data['SigninToken']
# print('https://signin.aws.amazon.com/federation?Action=login&Destination=https%3A%2F%2Fconsole.aws.amazon.com/console/home?region=us-west-1&SigninToken='+signin_token)
print('https://signin.aws.amazon.com/federation?Action=login&Destination=https%3A%2F%2Fconsole.aws.amazon.com&SigninToken='+signin_token)
EOF
end