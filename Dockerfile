FROM golang:1.15

WORKDIR /go
ADD ./go-docker /go/go-docker

RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

CMD [ "/go/go-docker"]