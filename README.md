# Reverse proxy for nyu-vote app using nginx.

Configured to be SSL only.

## To Configure


You must put in a certificate and a private key in order to setup SSL.

## In production

Buy a certificate from a Certificate Authority (CA).
The certificate and key must be placed in the following directory:

```
ssl/nyuapps.crt
ssl/nyuapps.key
```

You can generate a Certificate Signing Request (CSR) using the following command:
```
openssl req -nodes -newkey rsa:2048 -keyout nyuapps.key -out nyuapps.csr
```

Which will create in the current directory a private key as nyuapps.key,
and a csr as nyuapps.csr. You can send the contents of the nyuapps.csr to
a CA which will issue you an SSL certificate for a fee.

For the prompts, only the

## In development

For development purposes, you can use the following command to generate a
self-signed certificate and key:

```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/nyuapps.key -out ssl/nyuapps.crt
```

For the prompts, enter whatever you like.
Your browser will complain of an invalid certificate when accessing the site, as expected.
