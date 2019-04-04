FROM golang
WORKDIR /go/src/github.com/dustin-decker/talks/swarm/resources/05/
COPY RCE.go .
RUN go build -o /app 
EXPOSE 8000
ENTRYPOINT ["/app"]