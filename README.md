# Email client app

SSL
------

```bash
$ openssl genrsa -des3 -passout pass:x -out server.pass.key 2048
...
$ openssl rsa -passin pass:x -in server.pass.key -out localhost.key
writing RSA key
$ rm server.pass.key
$ openssl req -new -key localhost.key -out localhost.csr
...
Country Name (2 letter code) [AU]:UK
...
A challenge password []:
...

$ openssl x509 -req -sha256 -days 365 -in localhost.csr -signkey localhost.key -out localhost.crt
```

Run
------
```bash
$ thin start -p 3000 --ssl --ssl-key-file ~/.ssl/localhost.key --ssl-cert-file ~/.ssl/localhost.crt
```