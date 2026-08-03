#!/usr/bin/env python3
import os,requests
b=os.environ['BASE_URL'].rstrip('/');pw=os.environ['SUPERADMIN_PASSWORD'];home=requests.get(b+'/',timeout=30);assert home.status_code==200 and 'OpenSlides' in home.text
s=requests.Session();login=s.post(b+'/system/auth/login',json={'username':'superadmin','password':pw},timeout=30);assert login.status_code==200 and login.json().get('success') is True and login.headers.get('authentication')
bad=requests.post(b+'/system/auth/login',json={'username':'superadmin','password':'wrong-password'},timeout=30);assert bad.status_code in (400,401,403) or bad.json().get('success') is False
who=s.post(b+'/system/auth/who-am-i',headers={'authentication':login.headers['authentication']},timeout=30);assert who.status_code==200 and who.json().get('success') is True
print('OpenSlides smoke checks passed')
