## build env image

FROM golang as builder
WORKDIR /go/src/github.com/dustin-decker/talks/swarm/resources/03/
COPY whoami.go .
# compile static binary w/o dependency on libc
RUN CGO_ENABLED=0 go build -o app 


## production image

FROM scratch
# copy certs if we need to use outgoing TLS
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
# copy /etc/passwd so we can drop privileges
COPY --from=builder /etc/passwd /etc/passwd
# copy our deployable
COPY --from=builder /go/src/github.com/dustin-decker/talks/swarm/resources/03/app .
EXPOSE 8000
# drop privileges
USER nobody
ENTRYPOINT ["/app"]