FROM debian:buster

RUN apt-get update && apt-get install -y curl
RUN curl -LO https://github.com/google/cadvisor/releases/download/v0.38.7/cadvisor
RUN chmod +x cadvisor

CMD ["./cadvisor"]