# Docker for NGINX redirecting trafic to HTTPS

This docker container produces a secure NGINX server. It generates the certificates and is ready for production. You all need to provide the following files in the directory where you run the container:

Nginx general configuration:
```
nginx.conf
```
Configuration for port 80 server with redirection to port 443 server:
```
http.conf
```
Configuration for port 443 server:
```
ssl.conf
```

This repository provides example files for these configurations.

## Running the container



