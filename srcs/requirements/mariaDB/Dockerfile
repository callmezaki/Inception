FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./tools/mariadb.sh .

ENTRYPOINT  ["sh", "mariadb.sh"]

CMD ["mysqld"]
