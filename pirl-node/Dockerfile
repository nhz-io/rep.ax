FROM golang:1.9-alpine as builder

RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache git nodejs nodejs-npm make gcc musl-dev linux-headers

RUN go get -u github.com/kevinburke/go-bindata/go-bindata

RUN cd / && git clone https://github.com/pirl/pirl --depth 1
RUN cd /pirl && go generate ./dashboard && make pirl

FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /pirl/build/bin/pirl /usr/local/bin/

ADD start.sh /root/start.sh

EXPOSE 8080 6588 6589 30303 30303/udp 30304/udp

ENTRYPOINT /root/start.sh
