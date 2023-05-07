FROM debian:buster

RUN apt-get update -y; apt-get install mariadb-server -y;

COPY mariadb.sh .

CMD ["bash", "mariadb.sh"]
