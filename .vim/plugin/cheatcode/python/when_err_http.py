#!/usr/bin/pyhton

import urllib2
import md5
secret_key = 'c627e19450db746b739f41b64097d449'
print "i know secret key ======> " + secret_key
try:
	target_url = "http://ctfq.sweetduet.info:10080/~q9/"
	data = ''
	headers = { 'Host': 'ctfq.sweetduet.info:10080',
	    	    'Proxy-Connection': 'keep-alive',
	    	    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
	    	    'Upgrade-Insecure-Requests': '1',
    	            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36',
	    	    'Accept-Encoding': 'gzip, deflate, sdch',
	    	    'Accept-Language': 'ja,en-US;q=0.8,en;q=0.6',
		}

	getS_L = urllib2.Request(target_url,data,headers)
	resp = urllib2.urlopen(getS_L)
	res_head = resp.info()
	print res_head.getheaders("WWW-Authenticate")

except urllib2.HTTPError, e:
	error = e.info()
	print error.getheaders("WWW-Authenticate")[0]
	SL = error.getheaders("WWW-Authenticate")[0].split(",")[1].split('"')[1].replace("'","")
	print "i get ramdam code from server at access =========> " + error.getheaders("WWW-Authenticate")[0].split(",")[1].split('"')[1].replace("'","")
	cnonce = md5.new().hexdigest()
	A1 = "c627e19450db746b739f41b64097d449"
	A2 = md5.new("GET:/~q9/").hexdigest()
	response = md5.new(A1 + ":" + SL + ":" + "00000001" + ":" + cnonce + ":" + "auth" + ":" + A2).hexdigest()
	print response
	send_header = {
			'Host': 'ctfq.sweetduet.info:10080',
			'Connection': 'keep-alive',
			'Authorization': 'Digest username="q9", realm="secret", nonce="' + SL + '"' + ', uri="/~q9/", algorithm=MD5, response="' + response + '"' + ', qop=auth, nc=00000001, cnonce="' + cnonce + '"',
		        'User-Agent': 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19',
			'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
			'Accept-Encoding': 'gzip,deflate,sdch',
			'Accept-Language': 'ja,en-US;q=0.8,en;q=0.6',
			'Accept-Charset': 'Shift_JIS,utf-8;q=0.7,*;q=0.3',
		      }
	print send_header
finally:
	getanswer = urllib2.Request(target_url,data,send_header)
	lastresp = urllib2.urlopen(getanswer)
	print lastresp.read()

