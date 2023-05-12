FROM debian:buster

RUN apt-get update && apt-get install -y git golang
RUN go get github.com/google/cadvisor
RUN export GOPATH=/root/go
RUN export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
RUN cd /root/go/src/github.com/google/cadvisor && git checkout v0.38.7
RUN cd /root/go/src/github.com/google/cadvisor && go build .

CMD ["cadvisor"]