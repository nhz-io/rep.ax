FROM golang:1.9-alpine as builder

RUN apk add --update git make gcc musl-dev linux-headers

RUN go get github.com/ethereum/ethash
RUN go get github.com/ethereum/go-ethereum/common
RUN go get github.com/goji/httpauth
RUN go get github.com/gorilla/mux
RUN go get github.com/yvasiyarov/gorelic

RUN cd / && git clone https://github.com/sammy007/ether-proxy
RUN cd /ether-proxy && go build -o ether-proxy main.go

FROM alpine

COPY --from=builder /ether-proxy/ether-proxy /usr/bin

ENTRYPOINT ["/usr/bin/ether-proxy"]
