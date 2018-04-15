# RUN go get github.com/ethereum/ethash
# RUN go get github.com/ethereum/go-ethereum/common
# RUN go get github.com/goji/httpauth
# RUN go get github.com/gorilla/mux
# RUN go get github.com/yvasiyarov/gorelic

FROM golang:1.9-alpine as builder

RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache git make gcc musl-dev linux-headers

RUN cd / && git clone https://github.com/pirl/pirl
RUN cd /pirl && make pirl

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /pirl/build/bin/pirl /usr/local/bin/

ADD start.sh /root/start.sh

EXPOSE 6588 6589 30303 30303/udp 30304/udp
ENTRYPOINT /root/start.sh
