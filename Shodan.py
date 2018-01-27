
# coding: utf-8

from requests import get

from json import loads

from sys import argv


key = "" # Developer.shodan.io/api

met = {
    'httpheaders': '/tools/httpheaders',
    'myip': '/tools/myip',
    'appinfo': '/api-info'
}

obj = loads(get('https://api.shodan.io' + met[str(argv[1]).lower()], params={'key': key}).text)

print(f"\n\033[31m{obj}\033[37m\n")
