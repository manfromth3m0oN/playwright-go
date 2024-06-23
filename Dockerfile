FROM debian:bookworm

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install git

RUN apt-get install -y golang ca-certificates
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@v0.4400.0 install --with-deps
