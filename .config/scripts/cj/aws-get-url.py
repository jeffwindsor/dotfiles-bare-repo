#!/usr/bin/env python
import os
import urllib
import json
import httplib

sessionId = os.getenv('AWS_ACCESS_KEY_ID')
sessionKey = os.getenv('AWS_SECRET_ACCESS_KEY')
sessionToken = os.getenv('AWS_SESSION_TOKEN')

result = json.dumps({
  "sessionId": sessionId,
  "sessionKey": sessionKey,
  "sessionToken": sessionToken
})

path = '/federation?Action=getSigninToken&Session=' + urllib.quote_plus(result, safe="")

conn = httplib.HTTPSConnection("signin.aws.amazon.com")
conn.request("GET", path)
rq = conn.getresponse()

if rq.status != 200:
  raise Exception('request failed because %s', rq.reason)

data = json.load(rq)
signin_token = data['SigninToken']

print 'https://signin.aws.amazon.com/federation?Action=login&Destination=https%3A%2F%2Fconsole.aws.amazon.com&SigninToken='+signin_token

