FROM debian:buster


RUN apt-get -y update; apt-get -y install adminer; rm -rf /var/www/html; mkdir -p /var/www/html

RUN mv /etc/adminer/conf.php /var/www/html/index.php

CMD [ "apachectl", "-D", "FOREGROUND" ]
