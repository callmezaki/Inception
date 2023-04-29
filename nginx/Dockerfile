FROM debian:buster

RUN apt-get update ; apt-get install nginx -y ;mkdir /home/root ; apt-get install openssl ; openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt -subj '/CN=zait-sli.42.fr/O=zait-sli/L=Khouribga'

COPY root /home/root/
COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]