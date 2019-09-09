import requests

for num in range(1000):
    r = requests.get('http://shell-storm.org/shellcode/files/shellcode-{}.php'.format(num))

    #seems to be an issue where python cant write 
    with open(str(num), 'wb') as f:
        f.write(r.content)
