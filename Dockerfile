FROM nginx

RUN apt-get update

ADD ./nginx.conf /etc/nginx/
RUN rm -rf /etc/nginx/conf.d/*
ADD ./ssl.conf /etc/nginx/conf.d/
ADD ./http-80.conf /etc/nginx/conf.d/

RUN sed -i 's/access_log.*/access_log \/dev\/stdout;/g' /etc/nginx/nginx.conf; \
    sed -i 's/error_log.*/error_log \/dev\/stdout info;/g' /etc/nginx/nginx.conf; \
    sed -i 's/^pid/daemon off;\npid/g' /etc/nginx/nginx.conf

ADD ./gen_cert.sh /opt
ADD ./openssl.cnf /opt

RUN chmod 775 opt/gen_cert.sh

ENTRYPOINT ["/opt/gen_cert.sh", "berenice-demo", "brys", "/opt"]
CMD ["nginx"]
