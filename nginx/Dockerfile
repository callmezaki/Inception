FROM debian:buster

RUN apt-get update -y ; apt-get install nginx -y ; apt-get install openssl -y ;\
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj="/CN=zait-sli.42.fr/O=zait-sli/L=Khouribga"

COPY root /tmp/
COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN ls /var/log/nginx; echo "\n-----------------------------"
CMD ["nginx", "-g", "daemon off;"]