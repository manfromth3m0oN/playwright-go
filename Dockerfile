FROM debian:bookworm

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y golang ca-certificates
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@v0.4101.1 install --with-deps
