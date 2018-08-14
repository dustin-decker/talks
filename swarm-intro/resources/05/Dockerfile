FROM golang:1.10
WORKDIR /go/src/github.com/dustin-decker/talks/swarm/resources/05/
COPY RCE.go .
RUN CGO_ENABLED=0 go build -o /app 
EXPOSE 8000
ENTRYPOINT ["/app"]