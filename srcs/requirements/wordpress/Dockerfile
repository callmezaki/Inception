FROM debian:buster


RUN apt-get update -y && \
    apt-get install -y php php-fpm php-mysql curl mariadb-server

COPY ./tools/wp.sh .
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod +x wp.sh
ENTRYPOINT [ "bash", "wp.sh"]
CMD ["php-fpm7.3", "-F"]
