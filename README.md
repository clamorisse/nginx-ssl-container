[![](https://images.microbadger.com/badges/image/clamorisse/nginx-ssl-container.svg)](http://microbadger.com/images/clamorisse/nginx-ssl-container "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/clamorisse/nginx-ssl-container.svg)](http://microbadger.com/images/clamorisse/nginx-ssl-container "Get your own version badge on microbadger.com")

# Docker for NGINX redirecting trafic to HTTPS

This docker container produces a secure NGINX server based form the standard official NGINX image. The server listens to both 80 and 443 ports, redirecting all requests to 443 port. Self signed certificates are auto-generated everytime the container runs. You all need to do is provide the following files in the directory where you run the container:

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

docker run -it -p 80:80 -p 443:443 clamorisse/nginx-ssl-container

### The image for this container is in[DockerHub](https://hub.docker.com/r/clamorisse/nginx-ssl-container/).

This container is still work in process.


