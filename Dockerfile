FROM golang:1.10.3
WORKDIR /go/src/github.com/nametaketakewo/seccamp-b3-fizzbuzz-server
ADD ./server .
RUN CGO_ENABLED=0 go build

FROM scratch
WORKDIR /root/
COPY --from=0 /go/src/github.com/nametaketakewo/seccamp-b3-fizzbuzz-server/ .
CMD ["./seccamp-b3-fizzbuzz-server"]
