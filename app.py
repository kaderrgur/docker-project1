import requests
url = 'http://ifconfig.me/all'
r = requests.get(url, allow_redirects=True,verify=False)

open('all.txt', 'wb').write(r.content)

r = requests.get(url, allow_redirects=True)
print(r.headers.get('content-type'))

