FROM debian:buster

RUN apt-get update -y; apt-get install mariadb-server -y;

COPY mariadb.sh .

ENTRYPOINT  ["sh", "mariadb.sh"]

CMD ["mysqld"]
