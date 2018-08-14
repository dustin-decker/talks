## build env image

FROM golang:1.10-alpine3.8 as builder
# add a user now so we can copy /etc/passwd into the scratch production image
RUN adduser -D -u 59999 container-user
WORKDIR /go/src/github.com/dustin-decker/talks/swarm/resources/05/
COPY RCE.go .
# compile static binary w/o dependency on libc
RUN CGO_ENABLED=0 go build -o app 


## production image

FROM scratch
# copy certs if we need to use outgoing TLS
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
# copy /etc/passwd so we can drop privileges
COPY --from=builder /etc/passwd /etc/passwd
# copy our deployable
COPY --from=builder /go/src/github.com/dustin-decker/talks/swarm/resources/05/app .
EXPOSE 8000
# drop privileges
USER container-user
ENTRYPOINT ["/app"]