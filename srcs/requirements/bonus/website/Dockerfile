FROM debian:buster

RUN apt-get update -y; apt-get install nginx -y
RUN mkdir -p /var/www/html

COPY ./tools/index.html /var/www/html/index.html

COPY ./conf/ngnix.conf /etc/nginx/sites-available/default 

CMD ["nginx", "-g", "daemon off;"]
