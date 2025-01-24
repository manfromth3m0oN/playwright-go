FROM golang:1.23-bookworm

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git

RUN apt-get install -y golang ca-certificates
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@v0.4902.0 install --with-deps
