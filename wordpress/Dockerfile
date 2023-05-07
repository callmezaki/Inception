FROM debian:buster


RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y php-fpm php-mysqli curl

COPY wp.sh .

RUN chmod +x wp.sh

CMD ["bash", "wp.sh"]